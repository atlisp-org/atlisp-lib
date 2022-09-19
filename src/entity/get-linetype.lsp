(defun entity:get-linetype (ent)
  "获取图元的线型，当线型随层时，返回图层线型。"
  "String"
  "(entity:get-linetype (car(entsel)))"
  (if (entity:getdxf ent 6)
    (entity:getdxf ent 6)
    (cdr (assoc 6 (tblsearch "layer"
          (entity:getdxf ent 8))))))
