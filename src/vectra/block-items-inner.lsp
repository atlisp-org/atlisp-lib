(defun vectra:block-items-inner (en / name r)
  (if (= (quote str)
      (type en))
    (setq en (tblobjname "block"
        en)))
  (while (setq en (entnext en))
    (if (= "INSERT"
        (vectra:dxf en 0))
      (progn (setq name (vectra:dxf en 2))
        (if (not (member name $p-block-walked))
          (setq r (append r (vectra:block-items name))
            $p-block-walked (cons name $p-block-walked))))
      (setq r (cons en r))))
  r)
