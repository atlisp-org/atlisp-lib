(defun excel:get-property (obj prop / rtn)
  "检索 VLA 对象的特性\n参数:obj:vla对象\n参数:prop:符号或字符串，标识要检索的特性，字符串的时候可以直接调用多级特性：\"Rows.Count\""
  "特性的值"
  "(excel:get-property range \"MergeArea.Rows.Count\")"
  (cond ((= (type prop)
        (quote sym))
      (setq rtn (vlax-get-property obj prop)))
    ((= (type prop)
        (quote str))
      (if (null (vl-string-search "."
            prop))
        (setq rtn (vlax-get-property obj prop))
        (foreach item (bf-str->lst prop ".")
          (if (null rtn)
            (setq rtn (vlax-get-property obj item))
            (setq rtn (vlax-get-property rtn item)))))))
  rtn)
