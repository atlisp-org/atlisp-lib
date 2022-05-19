(defun excel:get-usedrange (xlapp name / rtn sh)
  "获取已使用的range区域\n参数:XLApp:已打开的excel文件对象\n参数:Name:工作表名"
  "成功返回range对象"
  "(excel:get-UsedRange exobj \"345\")"
  (if (null name)
    (setq name (excel:get-activesheet xlapp)))
  (vlax-for sh (vlax-get-property xlapp "sheets")
    (if (= (vlax-get-property sh "Name")
        name)
      (setq rtn (vlax-get-property sh "UsedRange"))))
  rtn)
