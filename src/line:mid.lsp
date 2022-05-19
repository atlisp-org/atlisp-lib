(defun line:mid (ent-line)
    "求线段实体中点坐标"
    (polar (entity:getdxf ent-line 10)
        (apply (quote angle)
            (entity:getdxf ent-line (quote (10 11))))
        (* 0.5 (line:length ent-line))))
