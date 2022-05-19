(defun m:rand-by-cputicks (/ n3 n4)
  "以日期及CPUticks为参数生成随机数"
  "1~100之间的整数"
  (setq n3 (rtos (rem (getvar "date")
        1)
      2 16))
  (setq n3 (substr n3 18 1)
    n3 (atoi n3))
  (setq n4 (rem (getvar "cputicks")
      100))
  (fix (rem (+ n3 n4)
      100)))
