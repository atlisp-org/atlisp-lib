(defun geometry:segment-by-line (line)
  (list (entity:getdxf line 10)
    (entity:getdxf line 11)))
