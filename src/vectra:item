(defun vectra:item (obj name / r)
  (if (vl-catch-all-error-p (setq r (vl-catch-all-apply (quote vla-item)
          (list obj name))))
    nil r))
