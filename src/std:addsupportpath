(defun std:addsupportpath (lst)
    ((lambda (str lst)
            (if (setq lst (vl-remove-if (quote (lambda (x)
                                (or (vl-string-search (strcase x)
                                        (strcase str))
                                    (not (findfile x)))))
                        lst))
                (setenv "acad"
                    (strcat str ";"
                        (apply (quote strcat)
                            (mapcar (quote (lambda (x)
                                        (strcat x ";")))
                                lst))))))
        (vl-string-right-trim ";"
            (getenv "acad"))
        (mapcar (quote (lambda (x)
                    (vl-string-right-trim "\\"
                        (vl-string-translate "/"
                            "\\"
                            x))))
            lst)))
