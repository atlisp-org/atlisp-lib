(defun text:mtext->text (str-m / lst-str str-m% purge-fmt)
    "去除多行文本中的格式化字符串，本函数为测试版，不保证结果正确。"
    "结果字符串"
    (if (and (= "{"
                (substr str-m 1 1))
            (= "}"
                (substr str-m (strlen str-m)
                    1)))
        (@:list-to-string (mapcar (function (lambda (x)
                        (@:string-subst "
                            "
                            "\\p"
                            (if (or (/= "\\"
                                        (substr x 1 1))
                                    (= "\\p"
                                        (substr x 1 2)))
                                x ""))))
                (@:string-to-list (substr str-m 2 (- (strlen str-m)
                            2))
                    ";"))
            "")
        str-m))
