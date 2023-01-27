(defun cl:pairlis (keys values)
  "两个列表构成 alisp"
  (mapcar '(lambda(x y)(cons x y)) keys values))
