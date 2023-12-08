(defun string:s2l-ansi (str / lst-src lst-str h% res)
  "字符串转字byte or word 整数值列表。
当小于128时，单字节，当两个连续的大于128时，双字节值。用于转换非英文字串时防止重码。
当AutoCAD2021且lispsys=1时，返回 unicode 码。"
  (if (<= 1 (getvar "lispsys"))
    (vl-string->list str)
    (progn
      (setq h% 0)
      (setq res (quote nil))
      (setq lst-src (vl-string->list str))
      (while (setq byte% (car lst-src))
	(cond
	  ((and (= 0 h%)
		(apply 'and 
		       (mapcar '= (list 92 85 43) lst-src)))
	   (setq lst-src (cdr lst-src))
	   (setq lst-src (cdr lst-src))
	   (setq lst-src (cdr lst-src))
	   (setq res (cons
		      (fix
		       (m:hex2dec
			(strcat "0x"
				(chr  (car lst-src))
				(chr (cadr lst-src))
				(chr (nth 2 lst-src))
				(chr (nth 3 lst-src)))))
		      res))
	   (setq lst-src (cdr lst-src))
	   (setq lst-src (cdr lst-src))
	   (setq lst-src (cdr lst-src))
	   )
	  ((and (= 0 h%)
		(/= byte% 92)
		(or (< byte% 128)
                    (> byte% 255)))
           (setq res (cons byte% res)))
          ((and (= 0 h%)
		(> 256 byte% 127))
           (setq h% byte%))
          ((or (and (> 170 h% 127)
		    (< byte% 128))
	       (and (> 256 h0 170)
		    (> 64 byte%)))
           (setq res (cons h% res))
           (setq res (cons byte% res))
           (setq h% 0))
          ((or
	    (and (> 170 h% 127)
		 (> 256 byte% 127))
	    (and (> 256 h% 170)
		 (> byte% 64)))
           (setq res (cons (+ (lsh h% 8)
			      byte%)
			   res))
           (setq h% 0)))
	(setq lst-src (cdr lst-src))
	)
      (reverse res))))
