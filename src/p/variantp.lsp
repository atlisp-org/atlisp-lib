(defun p:variantp (arg)
  "判断是否变体"
  (equal (type arg)
    (quote variant)))
