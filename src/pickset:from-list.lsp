(defun pickset:from-list (lstent / ss)
  "把图元列表转化成选择集，参数"
  "选择集"
  (setq ss (ssadd))
  (foreach i lstent (ssadd i ss))
  ss)
