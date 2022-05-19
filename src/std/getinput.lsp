(defun std:getinput (promptstr inplist default / inp)
    "获取输入，结合initget和getkword函数"
    (initget (if default 0 1)
        (string::from-lst inplist "
            "))
    (if (setq inp (getkword (strcat (if promptstr (strcat promptstr "
                            [")
                        "[")
                    (string::from-lst inplist "/")
                    "]"
                    (if (and default (member default inplist))
                        (strcat "
                            <"
                            default ">: ")
                        ": "))))
        inp default))
