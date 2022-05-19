(defun excel:add-sheet (xlapp name / rtn)
  "添加个工作表\n参数:XLApp:已打开的excel文件对象\n参数:Name:工作表名"
  "成功返回t"
  "(excel:add-sheet exobj \"123\")"
  (if (member name (excel:sheets xlapp))
    (setq rtn nil)
    (progn (vlax-put-property (vlax-invoke (vlax-get-property xlapp "sheets")
          "Add")
        "name"
        name)
      (setq rtn (equal (excel:get-activesheet xlapp)
          name))))
  rtn)
