(defun string:auto-split (str / curr-type lst tmp%)
  "自动分段，按数字-字母-汉字自动断开字符串为字符串列表。不支持科学计数法的数字。"
  "由字符串组成的列表"
  "(string:auto-split \"aa33.3bb汉字\")"
  (defun is-number (asc)
    (or (= asc 46)
	(and (>= asc 48)
             (<= asc 57))))
  (defun is-alpha (asc)
    (or (and (>= asc 65)
             (<= asc 90))
	(and (>= asc 97)
             (<= asc 112))))
  (defun is-hannum (asc)
    (member asc (string:s2l-ansi "零一二三四五六七六九十百千万亿"))
    )
  (defun is-han (asc)
    (if (and (getvar "lispsys")
	     (> (getvar "lispsys") 0))
	(>= asc 19968)
      (>= asc 32896)
      ))
  (defun is-sign (asc)
    (or (= asc (ascii "+"))
	(= asc (ascii "-"))))
  (defun test-type (asc)
    (cond ((is-number asc)
           (quote number))
	  ((is-alpha asc)
	   (quote alpha))
	  ((is-hannum asc)
	   (quote hannumber))
	  ((is-han asc)
           (quote han))
	  ((is-sign asc)
	   (quote sign))
	  (t nil)))
  (setq curr-type (test-type (car (string:s2l-ansi str))))
  (setq lst (quote nil))
  (foreach asc (string:s2l-ansi str)
	   (if (or (= curr-type (test-type asc))
		   (and (= curr-type 'sign)
			(= (test-type asc) 'number)))
	       (setq tmp% (cons asc tmp%))
	     (progn (setq lst (cons (reverse tmp%)
				    lst))
		    (setq tmp% (cons asc nil))
		    (setq curr-type (test-type asc)))))
  (setq lst (reverse (cons (reverse tmp%)
			   lst)))
  (mapcar (quote string:l2s-ansi)
	  lst))
