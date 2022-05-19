(defun entity:fontstyle_set (st_name h / sty)
  "验证字体样式是否存在，若不存在，则新建字体样式\n参数：\nst_name : 文字样式名\nh : 字高"
  ""
  "(fontstyle_set \"仿宋_GB2312\"
    0)"
  (setq sty (tblobjname "style"
      st_name))
  (if (null sty)
    (progn (entmake (list (quote (0 . "STYLE"))
          (quote (100 . "AcDbSymbolTableRecord"))
          (quote (100 . "AcDbTextStyleTableRecord"))
          (cons 2 st_name)
          (quote (70 . 0))
          (cons 40 h)
          (cons 41 0.7)
          (quote (3 . ""))
          (quote (4 . "")))))))
