(defun entity:get-color (ent)
  "获取图元的颜色，当颜色随层时，返回图层颜色。"
  (if (entity:getdxf ent 62)
    (entity:getdxf ent 62)
    (cdr (assoc 62 (tblsearch "layer"
          (entity:getdxf ent 8))))))
