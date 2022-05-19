(defun curve:pline-2dpoints (ent)
  "多段线端点列表，返回二维点坐标,LWPOLYLINE组码本来就是二维点。"
  "二维点坐标列表"
  "(curve:Pline-2dpoints (car (entsel)))"
  (mapcar (quote cdr)
    (vl-remove-if-not (quote (lambda (x)
          (or (= (car x)
              10)
            (= (car x)
              11))))
      (entget ent))))
