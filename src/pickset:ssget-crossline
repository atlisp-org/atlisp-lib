(defun pickset:ssget-crossline (ent filter /)
  "取得与线相交的选择集"
  "选择集"
  (if filter (ssget "f"
      (entity:getdxf ent (quote (10 11)))
      filter)
    (ssget "f"
      (entity:getdxf ent (quote (10 11))))))
