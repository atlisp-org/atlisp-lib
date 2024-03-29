(defun string:auto-split (str / curr-type lst tmp% res unitp)
  "自动分段，按数字-字母-汉字自动断开字符串为字符串列表。不支持科学计数法的数字。"
  "由字符串组成的列表"
  "(string:auto-split \"aa33.3bb汉字\")"
  (defun is-bracket (asc)
    (member asc (vl-string->list "()")))
  (defun is-operator (asc)
    (member asc (vl-string->list "+-*/·")))
  (defun is-unitsuffix (asc)
    (member asc (list 178 179))) ;;平方、立米
  (defun is-unitprefix(asc)
    (member asc (list 181))) ;; miu
  (defun is-number (asc)
    (or (= asc 46)
	(and (>= asc 48)
             (<= asc 57))))
  (defun is-alpha (asc)
    (or (and (>= asc 65)
             (<= asc 90))
	(and (>= asc 97)
             (<= asc 122))))
  (defun is-hannum (asc)
    (member asc (string:s2l-ansi "零一二三四五六七六九十百千万亿壹贰叁肆伍陆柒捌玖拾佰仟"))
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
    (cond ((is-number asc) (quote number))
	  ((is-alpha asc)(quote alpha))
	  ((is-hannum asc)(quote hannumber))
	  ((is-han asc)(quote han))
	  ((is-sign asc)(quote sign))
	  ((is-bracket asc)'bracket)
	  ((is-operator asc)'operator)
	  ((is-unitsuffix asc) 'unitsuffix)
	  ((is-unitprefix asc)'unitprefix)
	  (t nil)))
  (setq res (mapcar '(lambda(x)(cons
				x
				(test-type x)))
		    (string:s2l-ansi str)))
  (setq curr-type (cdr (car res)))
  (setq lst (quote nil))
  (foreach asc res
	   (cond
	    ((or (= curr-type (cdr asc))
		   (and (= curr-type 'sign)
			(= (cdr asc) 'number)))
	     (setq tmp% (cons (car asc) tmp%)))
	    (t
	     (progn (setq lst (cons (reverse tmp%)
				    lst))
		    (setq tmp% (cons (car asc) nil))
		    (setq curr-type (cdr asc))))))
  (setq lst (reverse (cons (reverse tmp%)
			   lst)))
  (setq res (mapcar (quote string:l2s-ansi)
		    lst))
  (setq unitp (member(car res) @:*units*))
  (setq lst nil)
  (setq tmp% "")
  (foreach word res
	   (cond
	     ((and unitp
		   (member word @:*units*))
	      (setq tmp% (strcat tmp% word)))
	     (t
	      (progn
		(if (/= "" tmp%)
		    (setq lst (cons tmp% lst)))
		(setq tmp% word)
		(setq unitp (member word @:*units*))))))
  (setq lst (reverse (cons tmp%
			   lst)))
  lst  
  )
