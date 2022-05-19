(defun stat:draw (/ n pt)
  "绘制最后一次统计的结果"
  (setq pt (getpoint "请输入要绘制的位置:"))
  (setq n 0)
  (table:make pt "统计结果"
    (quote ("项目"
        "个数"))
    (mapcar (quote (lambda (x)
          (list (car x)
            (cdr x))))
      @:tmp-stat-result)))
