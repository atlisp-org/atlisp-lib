(defun vectra:csvfile-read (filename / r rows)
  (if (setq rows (vectra:file-read filename))
    (progn (foreach row rows (setq row (vl-string-trim "
            \t\n,"
            row))
        (if (and (/= row "")
            (/= (vectra:string-left row 2)
              "//")
            (setq row (vectra:string-tokenize row ",")))
          (setq row (mapcar (function (lambda (e)
                  (vl-string-subst "\""
                    "\"\"\""
                    e)))
              row)
            r (cons row r))))
      (reverse r))))
