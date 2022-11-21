(defun curve:pline-convexity (ent / i lst v)
  "多段线凸度列表。"
  "数值列表"
  "(curve:pline-convexity (car (entsel)))"
  (cond ((and (= (quote ename)
          (type ent))
        (= "LINE"
          (entity:getdxf ent 0)))
      (list 0))
    (t (mapcar (quote cdr)
        (vl-remove-if-not (quote (lambda (x)
              (= 42 (car x))))
          (entget ent))))))
