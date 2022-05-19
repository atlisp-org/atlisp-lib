(defun excel:new (ishide / rtn)
  "新建Excel工作簿\n参数:ishide:是否可见，t为可见，nil为不可见"
  "一个表示Excel工作簿的vla对象"
  "(excel:New t)"
  (if (setq rtn (vlax-get-or-create-object "Excel.Application"))
    (progn (vlax-invoke (vlax-get-property rtn (quote workbooks))
        (quote add))
      (if ishide (vla-put-visible rtn 1)
        (vla-put-visible rtn 0))))
  rtn)
