(defun entity:make-line (startpt endpt / *error* result)
  "两点创建直线"
  "图元名 - 成功返回图元名，失败返回nil"
  "(entity:make-line '(0 0 0) '(100 0 0))"
  (defun *error* (msg)
  (princ (strcat "entity:make-line 错误: " msg))
  nil)
  (if (or (null startpt) (null endpt))
  (progn
      (princ "entity:make-line 错误: 起点或终点不能为空")
      nil)
  (progn
      (setq result (entmakex (list (quote (0 . "LINE"))
    (quote (100 . "AcDbEntity"))
    (quote (100 . "AcDbLine"))
    (cons 10 startpt)
    (cons 11 endpt))))
      (if (eq (type result) (quote ename))
    result
    nil))))