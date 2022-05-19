(defun style:missing-fonts (/ lst-missing st)
  "检查缺少的字体，如果有返回字体文件名组成的列表，没有返回nil"
  "字体文件名组成的列表,或nil"
  ""
  (setq st (tblnext "style"
      t))
  (setq lst-missing (cons (list (cdr (assoc 3 st))
        (cdr (assoc 4 st)))
      nil))
  (while (setq st (tblnext "style"))
    (setq lst-missing (cons (list (cdr (assoc 3 st))
          (cdr (assoc 4 st)))
        lst-missing)))
  (vl-remove nil (mapcar (quote (lambda (x)
          (cond ((null (vl-filename-extension x))
              (if (findfile (strcat x ".shx"))
                nil x))
            ((member (strcase (vl-filename-extension x)
                  t)
                (quote (".shx")))
              (if (findfile x)
                nil x))
            ((member (strcase (vl-filename-extension x)
                  t)
                (quote (".ttf"
                    ".ttc")))
              (if (findfile (strcat (getenv "windir")
                    "\\Fonts\\"
                    X))
                nil X)))))
      (LIST:REMOVE-DUPLICATES (VL-REMOVE nil (VL-REMOVE ""
            (APPLY (QUOTE APPEND)
              LST-MISSING)))))))
