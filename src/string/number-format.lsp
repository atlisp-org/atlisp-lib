(defun string:number-format (str-num int-n int-fraction str-fill / lst-num part-int part-fraction pre-str post-str)
  "格式化数字输出。使输出的字符串长度一致。参数: str-num:数字字符串，int-n,整数位数，int-fraction:小数位数，str-fill:填充字符，字符串第一个为前缀，最后一个为后缀"
  "字符串"
  "(string:number-format \"5.3\"
    3 3 \" 0\")
  = > \"  5.300\""
  (if (numberp str-fill)
    (setq str-fill (rtos str-fill 2 0)))
  (setq pre-str (string:l2s-ansi(list(car(string:s2l-ansi str-fill)))))
  (setq post-str (string:l2s-ansi(list(last(string:s2l-ansi str-fill)))))
  (setq lst-num (string:to-list str-num "."))
  (setq part-int (car lst-num))
  (setq part-fraction (cadr lst-num))
  (repeat (- int-n (strlen part-int))
    (setq part-int (strcat pre-str part-int)))
  (if part-fraction (repeat (- int-fraction (strlen part-fraction))
      (setq part-fraction (strcat part-fraction post-str)))
    (progn (setq part-fraction "")
      (repeat int-fraction (setq part-fraction (strcat part-fraction post-str)))))
  (if (= ""
      part-fraction)
    (strcat part-int)
    (strcat part-int "."
      part-fraction)))
