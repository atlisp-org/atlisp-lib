(defun vectra:directory-make (folder / folders cur)
  (setq folder (vl-string-trim "\\/"
      folder)
    folders (vectra:string-tokenize folder "\\/")
    cur (car folders)
    folders (cdr folders))
  (foreach e folders (setq cur (strcat cur "\\"
        E))
    (IF (NULL (VL-FILE-DIRECTORY-P CUR))
      (VL-MKDIR CUR))))
