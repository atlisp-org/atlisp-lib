(defun vectra:insert-seqs (en / r)
  (while (and (setq en (entnext en))
      (/= "SEQEND"
        (vectra:dxf en 0)))
    (setq r (cons en r)))
  r)
