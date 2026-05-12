(defun m:evenp (n)
  "测试一个整数是否为偶数"
  "T or nil - n为偶数返回T，否则返回nil"
  "(m:evenp 4) => T"
  "(m:evenp 5) => nil"
  (= 0 (rem (fix n) 2)))