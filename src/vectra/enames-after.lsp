(defun vectra:enames-after (en ss /)
  (if (null ss)
    (setq ss (ssadd)))
  (while (setq en (entnext en))
    (setq ss (ssadd en ss)))
  ss)
