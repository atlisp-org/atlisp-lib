(defun std:removesupportpath (lst / del str tmp)
    (defun del (old str / pos)
        (if (setq pos (vl-string-search (strcase old)
                    (strcase str)))
            (strcat (substr str 1 pos)
                (del old (substr str (+ 1 pos (strlen old)))))
            str))
    (setq str (strcat (vl-string-right-trim ";"
                (getenv "acad"))
            ";")
        tmp str)
    (foreach pth lst (setq str (del (strcat (vl-string-right-trim "\\"
                        (vl-string-translate "/"
                            "\\"
                            pth))
                    ";")
                str)))
    (if (/= tmp str)
        (setenv "acad"
            str)))
