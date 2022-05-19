(defun datetime:leap-yearp (year)
  "判断某个是否为闰年。"
  (if (= 0 (mod year 100))
    (if (= 0 (mod year 400))
      t nil)
    (if (= 0 (mod year 4))
      t nil)))
