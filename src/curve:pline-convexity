(defun curve:pline-convexity (ent / i lst v)
  "多段线端点列表，返回三维点坐标"
  "三维点坐标列表"
  "(curve:pline-3dpoints (car (entsel)))"
  (cond ((and (= (quote ename)
          (type ent))
        (= "LINE"
          (entity:getdxf ent 0)))
      (list 0))
    (t (mapcar (quote cdr)
        (vl-remove-if-not (quote (lambda (x)
              (= 42 (car x))))
          (entget ent))))))
