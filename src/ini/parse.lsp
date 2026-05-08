(defun ini:parse ( filename / fp result *error* lines)
  "解析ini文件。"
  "list"
  (defun *error* (msg)
  (if (= 'file (type fp)) (close fp))
  (@:*error* msg))
  (require '(p:* string:*))
  (if (not (setq fp (open filename "r")))
  (progn (princ (strcat "无法打开文件: " filename)) nil)
  (progn
      (setq result '())
      (setq sub '())
      (while (setq str-line (read-line fp))
    (setq str-line (car (string:parse-by-lst (vl-string-trim " " str-line) '(";""#"))))
    (cond
         ((= 91 (ascii str-line))
          (if sub (setq result (cons (reverse sub) result)))
          (setq sub (cons (strcat "[" (vl-string-trim "[] " str-line) "]") nil)))
         ((and str-line (setq a&v (string:to-list str-line "=")) (cadr a&v))
          (setq sub (cons (cons (car a&v) (cadr a&v)) sub)))
         (t nil)))
      (if sub (setq result (cons (reverse sub) result)))
      (close fp)
      (reverse result))))

      
      

     
