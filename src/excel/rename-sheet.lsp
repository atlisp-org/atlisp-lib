(defun excel:rename-sheet (xlapp old new / rtn sh)
  "说明:重命名工作表\n参数:XLApp:已打开的excel文件对象\n参数:Old:工作表原名\n参数:New:工作表新名"
  "成功返回t"
  "(excel:rename-Sheet  exobj \"123\"
    \"345\")"
  (if (null old)
    (setq old (excel:get-activesheet xlapp)))
  (if (member new (excel:sheets xlapp))
    (setq rtn nil)
    (progn (vlax-for sh (vlax-get-property xlapp "sheets")
        (if (= (vlax-get-property sh (quote name))
            old)
          (vlax-put-property sh (quote name)
            new)))
      (setq rtn (equal new (excel:get-activesheet xlapp)))))
  rtn)
