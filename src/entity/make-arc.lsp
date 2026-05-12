(defun entity:make-arc (cen rad startpt endpt / *error* result)
  "创建圆弧"
  "图元名 - 成功返回图元名，失败返回nil"
  "(entity:make-arc '(0 0 0) 50 '(1 0 0) '(0 1 0))"
  (defun *error* (msg)
  (princ (strcat "entity:make-arc 错误: " msg))
  nil)
  (if (or (null cen) (null rad) (null startpt) (null endpt))
  (progn (princ "entity:make-arc 错误: 参数不能为空") nil)
  (progn
      (setq result (entmakex (list (quote (0 . "ARC"))
    (quote (100 . "AcDbEntity"))
    (quote (100 . "AcDbCircle"))
    (quote (100 . "AcDbArc"))
    (cons 10 cen)
    (cons 40 rad)
    (cons 50 (if (listp startpt) (angle cen startpt) startpt))
    (cons 51 (if (p:listp endpt) (angle cen endpt) endpt)))))
      (if (eq (quote ename) (type result)) result nil))))