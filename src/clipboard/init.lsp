(defun clipboard:init nil "初始化剪贴板对象。"
  ""
  (setq @:*clipboard* (vlax-get (vlax-get-property (vlax-get-or-create-object "HTMLFILE")
        (quote parentwindow))
      (quote clipboarddata))))
