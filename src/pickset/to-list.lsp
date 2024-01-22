(defun pickset:to-list (ss)
  "选择集转图元列表"
  "图元列表"
  (if ss
      (pickset:to-list-by-ssnamex ss)
      ))
