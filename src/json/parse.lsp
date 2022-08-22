(defun json:parse (str)
  "Json 字符串转化为 lisp 列表。"
  "list"
  (setq lst-str (vl-string->list str))
  (setq flag-escape nil)
  (setq flag-quote nil)
  (setq flag-keylevel 0)
  (setq flag-arraylevel 0)
  (setq atom-str-lst '())
  ;;(setq res nil)

  (while lst-str
    (setq curr-char (car lst-str))
    (cond
     ((= (ascii "\\") curr-char)
      (setq flag-escape (not flag-escape))
      (setq atom-str-lst (cons curr-char atom-str-lst))
      )
     ((and (= (ascii "\"") curr-char)
	   (null flag-escape))
      (setq flag-quote (not flag-quote))
      (setq atom-str-lst (cons curr-char atom-str-lst))
      )
     (t
      (if flag-quote
	  (setq atom-str-lst (cons curr-char atom-str-lst))
	  (cond
	   ((= (ascii "{") curr-char)
	    ;;对象 key/value mode
	    (setq flag-keylevel (1+ flag-keylevel))
	    (setq atom-str-lst (cons (ascii "(") atom-str-lst))
	    )
	   ((= (ascii "[") curr-char)
	    ;;array mode
	    (setq flag-arraylevel (1+ flag-arraylevel))
	    (if(= pre-char (ascii ":"))
		(setq atom-str-lst (cons (ascii "(") (cdddr atom-str-lst)))
	      (setq atom-str-lst (cons (ascii "(") atom-str-lst)))
	    )
	   ((= (ascii "}") curr-char)
	    ;;对象 key/value mode
	    (setq flag-keylevel (1- flag-keylevel))
	    (setq atom-str-lst (cons (ascii ")") atom-str-lst))
	    )
	   ((= (ascii "]") curr-char)
	    ;;array mode
	    (setq flag-arraylevel (1- flag-arraylevel))
	    (setq atom-str-lst (cons (ascii ")") atom-str-lst)))
	   
	   ((= (ascii ":") curr-char)
	    ;; 处理 key
	    (setq atom-str-lst
		  (cons (ascii " ")
			(cons (ascii ".")
			      (cons (ascii " ") atom-str-lst))))
	    )
	   ((= (ascii ",")curr-char)
	    ;; value
	    (setq atom-str-lst
		  (cons (ascii "(")
			(cons (ascii ")")
			      atom-str-lst)))
	    )
	   (t (setq atom-str-lst (cons curr-char atom-str-lst)))
	   ))))
    (setq pre-char curr-char)
    (setq lst-str(cdr lst-str))
    )
  
  (read(strcat "(" (vl-list->string (reverse atom-str-lst)) ")"))
  )


