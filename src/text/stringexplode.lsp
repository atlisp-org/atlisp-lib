(defun text:stringexplode (str_given / strlst_defined strlst_defined2 str_defined i_length str_lst_return e)
    (while (> (strlen str_given)
            0)
        (cond ((and (> (strlen str_given)
                        2)
                    (setq startdefinednum (vl-string-search "%"
                            str_given 0))
                    (= startdefinednum 0))
                (if (setq againdefinednum (vl-string-search "%"
                            str_given (1+ startdefinednum)))
                    (if (member (substr str_given (+ startdefinednum 1)
                                3)
                            (quote ("%%o"
                                    "%%o"
                                    "%%u"
                                    "%%u"
                                    "%%p"
                                    "%%p"
                                    "%%c"
                                    "%%c"
                                    "%%d"
                                    "%%d"
                                    "%%%")))
                        (setq definedstr (substr str_given (+ startdefinednum 1)
                                3)
                            str_lst_return (cons definedstr str_lst_return)
                            str_given (substr str_given 4))
                        (setq definedstr (substr str_given (+ startdefinednum 1)
                                5)
                            str_lst_return (cons definedstr str_lst_return)
                            str_given (substr str_given 6)))))
            ((and (> (strlen str_given)
                        6)
                    (setq startdefinednum (vl-string-search "\\"
                            str_given flagnum))
                    (= startdefinednum 0))
                (if (setq againdefinednum (vl-string-search "u"
                            str_given (1+ startdefinednum)))
                    (if (member (substr str_given (+ startdefinednum 1)
                                8)
                            (quote ("\u+23f61"
                                    "\u+23f62"
                                    "\u+23f63"
                                    "\u+23f64"
                                    "\u+23f65"
                                    "\u+23f66"
                                    "\u+23f67"
                                    "\u+23f68"
                                    "\u+23f69")))
                        (setq definedstr (substr str_given (+ startdefinednum 1)
                                8)
                            str_lst_return (cons definedstr str_lst_return)
                            str_given (substr str_given 9))
                        (setq definedstr (substr str_given (+ startdefinednum 1)
                                7)
                            str_lst_return (cons definedstr str_lst_return)
                            str_given (substr str_given 8)))))
            ((> (ascii (substr str_given 1 1))
                    128)
                (setq str_lst_return (cons (substr str_given 1 2)
                        str_lst_return))
                (setq str_given (substr str_given 3)))
            (t (setq str_lst_return (cons (substr str_given 1 1)
                        str_lst_return))
                (setq str_given (substr str_given 2)))))
    (reverse str_lst_return))
