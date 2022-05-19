(defun excel:utils-index-cells->range (lst / num->col)
  "说明:工具函数，将行号、列标表转换成A1格式的引用\n参数:lst:行号、列标表，列最多支持到ZZ列"
  "A1格式的引用"
  "(Excel:Utils-index-cells->range '(1 2 3 4))"
  (defun num->col (n)
    (if (< n 27)
      (chr (+ 64 n))
      (strcat (num->col (/ (1- n)
            26))
        (num->col (1+ (rem (1- n)
              26))))))
  (if (= (quote list)
      (type lst))
    (cond ((= 2 (length lst))
        (strcat (num->col (cadr lst))
          (itoa (car lst))))
      ((= 4 (length lst))
        (strcat (num->col (cadr lst))
          (itoa (car lst))
          ":"
          (num->col (last lst))
          (itoa (caddr lst))))
      (t "A1"))
    lst))
