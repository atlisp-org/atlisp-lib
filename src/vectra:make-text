(defun vectra:make-text (text point align height width ang / c)
  (vectra:textstyle-get $addnew-textstyle "gbenor.shx"
    "hztxt.shx"
    0.7)
  (setq c (cdr (assoc (strcase align)
        (quote (("L"
              0 0)
            ("C"
              1 0)
            ("R"
              2 0)
            ("A"
              3 0)
            ("M"
              4 3)
            ("F"
              5 0)
            ("TL"
              0 3)
            ("TC"
              1 3)
            ("TR"
              2 3)
            ("ML"
              0 2)
            ("MC"
              1 2)
            ("MR"
              2 2)
            ("BL"
              0 1)
            ("BC"
              1 1)
            ("BR"
              2 1))))))
  (vectra:entmake (list (quote (0 . "TEXT"))
      (cons 1 text)
      (cons 7 $addnew-textstyle)
      (cons 10 point)
      (cons 11 point)
      (cons 40 height)
      (cons 41 width)
      (cons 50 ang)
      (cons 72 (car c))
      (cons 73 (cadr c)))))
