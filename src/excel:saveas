(defun excel:saveas (xlapp filename)
  "另存为excel文件\n参数:XLApp:已打开的excel文件对象\n参数:Filename:另存为的文件路径"
  (vlax-invoke (vlax-get-property xlapp "ActiveWorkbook")
    "SaveAs"
    filename))
