(defun excel:utils-getvalue (var)
  "说明:工具函数，获取变体的值\n参数:var:变体"
  "值列表，其中数字全部转换为字符串"
  "(excel:Utils-GetValue obj)"
  (cond ((= (quote list)
        (type var))
      (mapcar (quote excel:utils-getvalue)
        var))
    ((= (quote variant)
        (type var))
      (excel:utils-getvalue (vlax-variant-value (if (member (vlax-variant-type var)
              (quote (5 4 3 2)))
            (setq var (vlax-variant-change-type var vlax-vbstring))
            var))))
    ((= (quote safearray)
        (type var))
      (mapcar (quote excel:utils-getvalue)
        (vlax-safearray->list var)))
    (t var)))
