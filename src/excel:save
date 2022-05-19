(defun excel:save (xlsapp)
  "保存当前工作簿\n参数:xlsApp:当前工作簿对象"
  "正确保存应该返回t，错误返回nil"
  "(excel:save xlsobj)"
  (equal (vlax-invoke-method (vlax-get-property xlsapp "ActiveWorkbook")
      "Save")
    :vlax-true))
