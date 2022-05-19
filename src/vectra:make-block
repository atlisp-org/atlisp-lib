(defun vectra:make-block (name funcname params / en r)
  (entmake (list (cons 0 "BLOCK")
      (cons 2 name)
      (cons 70 (if (= "*U"
            name)
          1 0))
      (cons 10 $addnew-block-base)))
  (setq r (vl-catch-all-apply funcname params))
  (setq en (entmake (quote ((0 . "ENDBLK")))))
  (if (vl-catch-all-error-p r)
    (progn (princ (strcat "\nerror in vectra:make-block:"
          (vl-princ-to-string (cons funcname params))))
      nil)
    en))
