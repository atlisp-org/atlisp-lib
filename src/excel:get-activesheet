(defun excel:get-activesheet (xlapp)
  "获取当前工作表的名字\n参数:XLApp:打开的excel文件对象"
  "名字字符串"
  "(excel:getActiveSheet exobj)"
  (vlax-get-property (vlax-get-property (vlax-get-property xlapp (quote activeworkbook))
      (quote activesheet))
    (quote name)))
