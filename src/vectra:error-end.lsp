(defun vectra:error-end nil (if $p-sysvars-saved (progn (vectra:setvars $p-sysvars-saved)
      (setq $p-sysvars-saved nil))))
