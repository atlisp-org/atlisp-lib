(defun m:evenp (n)
  "测试一个整数是否为偶数"
  "T or nil"
  (= 0 (rem (fix n)
      2)))
