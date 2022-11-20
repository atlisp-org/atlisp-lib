(defun entity:get-layer (ent)
  "获取图元的图层名"
  "String"
  (entity:getdxf ent 8))
