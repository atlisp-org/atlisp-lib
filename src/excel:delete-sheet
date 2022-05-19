(defun excel:delete-sheet (xlapp name / old rtn sh)
  "说明:删除工作表\n参数:XLApp:已打开的excel文件对象\n参数:Name:工作表名"
  "成功返回t"
  "(excel:deleteSheet exobj \"123\")"
  (setq rtn (excel:sheets xlapp)
    old (vlax-get-property xlapp "DisplayAlerts"))
  (vlax-put-property xlapp "DisplayAlerts"
    0)
  (vlax-for sh (vlax-get-property xlapp "sheets")
    (if (= (vlax-get-property sh "Name")
        name)
      (vlax-invoke-method sh "Delete")))
  (vlax-put-property xlapp "DisplayAlerts"
    old)
  (not (equal rtn (excel:sheets xlapp))))
