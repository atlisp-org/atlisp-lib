(defun excel:set-activesheet (xlapp name / sh)
  "设置活动工作表\n参数:XLApp:已打开的excel文件对象\n参数:Name:工作表名"
  "成功返回t"
  "(excel:set-ActiveSheet exobj \"123\")"
  (if (member name (excel:sheets xlapp))
    (vlax-for sh (vlax-get-property xlapp "sheets")
      (if (= (vlax-get-property sh "Name")
          name)
        (vlax-invoke-method sh "Activate"))))
  (equal (excel:get-activesheet xlapp)
    name))
