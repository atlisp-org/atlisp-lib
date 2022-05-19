(defun pickset:to-list (ss)
  "选择集->图元列表"
  "图元列表"
  (if ss (vl-remove-if-not (quote p:enamep)
      (mapcar (quote cadr)
        (ssnamex ss)))
    nil))
