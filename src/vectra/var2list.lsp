(defun vectra:var->list (var / e)
  (cond ((= (quote safearray)
        (type var))
      (mapcar (quote (lambda (e)
            (vectra:var->list e)))
        (vlax-safearray->list var)))
    ((= (quote variant)
        (type var))
      (vectra:var->list (vlax-variant-value var)))
    (t var)))
