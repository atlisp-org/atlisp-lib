(defun m:gcd (a b)
  "求最大公约数"
  (if (= b 0)
    a (gcd b (rem a b))))
