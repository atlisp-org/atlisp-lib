(defun ini:parse ( filename / fp  result *error*)
  "解析 ini 文件。"
  "list"
  
  (defun *error* (msg)
    (if (= 'file (type fp)) (close fp))
    (@:*error* msg))
  (require '(p:* string:*))
  (setq fp (open filename "r"))
  (setq result '())
  (setq sub '())
  (while (setq str-line (read-line fp))
    (setq str-line (car (string:parse-by-lst (vl-string-trim " " str-line) '(";""#"))))
    (cond
     ((= 91 (ascii str-line))
      (if sub
	  (setq result (cons (reverse sub) result))
	)
      (setq sub (cons (strcat "["(vl-string-trim "[] " str-line)"]") nil)))
     ((setq a&v (string:to-list str-line "="))
      (setq sub (cons (cons (car a&v)(cadr a&v)) sub)))
     (t (prompt (strcat "parse error " str-line)))))
  (if sub
      (setq result (cons (reverse sub) result))
    )
  (close fp)
  (reverse result)
  )

      
      

     
