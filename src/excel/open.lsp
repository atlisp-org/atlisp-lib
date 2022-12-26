(defun excel:open (filename ishide / activesheet excelapp rtn sheets worksheet)
  "打开一个excel文件\n参数:Filename:文件路径\n参数:ishide:是否可见，t为可见，nil为不可见"
  "一个表示打开的excel文件的vla对象"
  "(excel:open \"C:/Users/mimi/Desktop/1.xlsx\" t)"
  (if (and (findfile filename)
      (setq rtn (vlax-get-or-create-object "Excel.Application")))
    (progn (vlax-invoke (vlax-get-property rtn (quote workbooks))
        (quote open)
        filename)
      (if ishide (vla-put-visible rtn 1)
        (vla-put-visible rtn 0))))
  rtn)
