(defun excel:sheets (xlapp / rtn sh)
  "获取工作表列表\n参数:XLApp:已打开的excel文件对象"
  "工作表名列表"
  "(excel:sheets exobj)"
  (vlax-for sh (vlax-get-property xlapp "sheets")
    (setq rtn (cons (vlax-get-property sh "Name")
        rtn)))
  (reverse rtn))
