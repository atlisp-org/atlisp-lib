(defun clipboard:cleardata (/ cb)
  "清空剪贴板内容"
  "-1"
  "(clipboard:cleardata)"
  (clipboard:init)
  (vlax-invoke @:*clipboard* (quote cleardata)
    "text"))
