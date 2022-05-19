(defun pickset:to-vlalist (ss)
  "选择集转为Vla列表"
  "Vla列表"
  "pickset->vlalist (ssget))"
(if ss (mapcar (quote vlax-ename->vla-object)
    (pickset->list ss))
  nil))
