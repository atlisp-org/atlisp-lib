(defun pickset:ptx (sel n / ptlist)
  "取选择集4角点坐标的第n个，左下 0 右下 1 右上 2 左上 3"
  "第n个角点坐标"
  "(pickset:ptx sel 0)"
  (setq ptlist (pickset:getbox sel 0))
  (nth n (point:rec-2pt->4pt (car ptlist)
      (cadr ptlist))))
