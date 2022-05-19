(defun vectra:file-search (path patten / r)
  (foreach dir (cddr (vl-directory-files path nil -1))
    (setq r (append r (vectra:file-search (strcat path "\\"
            DIR)
          PATTEN))))
  (FOREACH FILE (VL-DIRECTORY-FILES PATH PATTEN 0)
    (SETQ R (CONS (STRCAT PATH "\\"
          file)
        r)))
  r)
