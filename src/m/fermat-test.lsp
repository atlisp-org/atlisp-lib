(defun m:fermat-test (n / test-it)
  "素数测试"
  "T or nil"
  "(m:fermat-test 11)"
  (defun test-it (a)
    (= (m:expmod a n n)
      a))
  (test-it (+ 1 (fix (m:random (- n 1))))))
