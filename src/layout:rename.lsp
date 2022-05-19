(defun layout:rename (str-oldname str-newname / lst-name)
  "重命名布局名称"
  ""
  "(layout:rename \"布局1\"
    \"我的布局\")"
  (setq lst-name (mapcar (quote vla-get-name)
      (layout:vla-list)))
  (if (and (member str-oldname lst-name)
      (null (member str-newname lst-name)))
    (vla-put-name (nth (vl-position str-oldname lst-name)
        (layout:vla-list))
      str-newname)))
