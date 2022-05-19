(defun clipboard:setdata (str / cb)
  "设置剪贴板内容为 str."
  "-1"
  "(clipboard:setdata \"the string in clipboard.\")"
  (clipboard:init)
  (vlax-invoke @:*clipboard* (quote setdata)
    "text"
    str))
