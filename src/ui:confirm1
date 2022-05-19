(defun ui:confirm1 (lst-str str-yes-no / *error* result dcl-fp dcl-tmp)
  "确认对话框. 参数：lst-str 单个字符串，或字符串列表。\n参数 str-Yes-No 字符串用 - 分隔成两部分，前面为accept,后面为 Cancel.如 是-否，愿意-不愿意。"
  "T or nil"
  "(ui:confirm1 '(\"你家门口有两双鞋。\"
      \"一双是你的。\"
      \"另一双也是你的。\"
      \"你感觉孤独吗？\")
    \"是-否\")"
  (setq @:this (quote ui:confirm1))
  (defun *error* (msg)
    (if (= (quote file)
        (type dcl-fp))
      (close dcl-fp))
    (vl-file-delete dcl-tmp)
    (@:*error* msg))
  (if (= (quote str)
      (type lst-str))
    (setq lst-str (list lst-str)))
  (dcl:dialog "confirm")
  (dcl:mtext "mt"
    (length lst-str)
    (max (apply (quote max)
        (mapcar (quote string:bytelength)
          lst-str))
      50))
  (dcl:end-dialog str-yes-no)
  "3. Control 创建控制流程"
  (dcl:new "confirm")
  (set_tile "title"
    "请确认以下事项")
  (dcl:set-mtext "mt"
    (string:from-list lst-str "\n"))
  "6. Show dialog 显示并进行交互"
  (if (> (dcl:show)
      0)
    t nil))
