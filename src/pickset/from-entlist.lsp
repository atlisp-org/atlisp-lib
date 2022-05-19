(defun pickset:from-entlist (entlst / ss)
  "图元列表->选择集"
  "选择集"
  (setq ss (ssadd))
  (foreach i entlst (ssadd i ss))
  ss)
