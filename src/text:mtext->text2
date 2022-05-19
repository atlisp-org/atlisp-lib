(defun text:mtext->text2 (str-m / lst-str str-m% purge-fmt)
    "去除多行文本中的格式化字符串，本函数为测试版，不保证结果正确。"
    "结果字符串"
    (setq lst-str (string:parse-by-lst str-m (quote ("\\"
                    "{"
                    "}"))))
    (defun purge-fmt (str-m)
        (if (/= ""
                str-m)
            (cond ((and (/= "s"
                            (substr str-m 1 1))
                        (= ";"
                            (substr str-m (strlen str-m))))
                    (setq str-m ""))
                ((and (= "s"
                            (substr str-m 1 1))
                        (= ";"
                            (substr str-m (strlen str-m)))
                        (setq str-m (substr str-m 2 (- (strlen str-m)
                                    2)))))
                (t (setq str-m (substr str-m 2)))))
        (setq lst-str (string:to-list str-m ";"))
        (if (> (length lst-str)
                1)
            (setq str-m (last lst-str)))
        str-m)
    (string:from-list (vl-remove ""
            (mapcar (quote purge-fmt)
                lst-str))
        ""))
