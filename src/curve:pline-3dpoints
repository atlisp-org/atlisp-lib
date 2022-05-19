(defun curve:pline-3dpoints (ent / i lst v)
  "多段线端点列表，返回三维点坐标。注意：当多段线为闭合时，最终点为起始点，比图元多一个点。"
  "三维点坐标列表"
  "(curve:pline-3dpoints (car (entsel)))"
  (cond ((and (= (quote ename)
          (type ent))
        (= "LINE"
          (entity:getdxf ent 0)))
      (list (entity:getdxf ent 10)
        (entity:getdxf ent 11)))
    (t (setq i -1)
      (while (setq v (vlax-curve-getpointatparam ent (setq i (1+ i))))
        (setq lst (cons v lst)))
      (reverse lst))))
