(defun pickset:to-array (ss)
  "选择集->数"
  "数组"
  "(pickset->Array (ssget))"
  (if ss (vla:list->array (pickset:to-vlalist ss)
			  9)
      nil))
