(defun entity:spline (pts)
  (command "_SPLINE")
  (mapcar (quote command)
    pts)
  (command ""
    ""
    "")
  (entlast))
