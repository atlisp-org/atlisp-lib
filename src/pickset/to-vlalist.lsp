(defun pickset:to-vlalist (ss)
  "选择集或图元列表转为Vla列表"
  "Vla列表"
  "(pickset:to-vlalist (ssget))"
  (if (= 'pickset (type ss))
      (setq ss (pickset:to-list ss)))
  (if ss
      (mapcar (quote vlax-ename->vla-object)
	      ss)
      ))
