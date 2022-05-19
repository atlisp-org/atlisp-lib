(defun entity:make-circle (cen rad)
  "创建一个圆\n参数:\ncen:圆心\nrad:半径\n示例:\n(entity:addcircle (getpoint)
    3)\n"
  (entmakex (list (quote (0 . "circle"))
      (quote (100 . "AcDbEntity"))
      (quote (100 . "AcDbCircle"))
      (cons 10 cen)
      (cons 40 rad))))
