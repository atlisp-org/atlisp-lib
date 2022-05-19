(defun vectra:array-set (arr n value /)
  (vlax-safearray-put-element arr n (vectra:list->var value)))
