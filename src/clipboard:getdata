(defun clipboard:getdata (/ cb)
  "获取剪贴板内容"
  "string or nil"
  "(clipboard:getdata)"
  (clipboard:init)
  (vlax-invoke @:*clipboard* (quote getdata)
    "TEXT"))
