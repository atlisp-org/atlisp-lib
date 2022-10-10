(defun string:rsubstr (str len)
  "从右侧截取子串"
  (substr str (- (strlen str)
      len -1)))
