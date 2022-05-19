(defun vla:get-value (var)
  "变体里取值.参数 var:变体或者数组"
  "数据列表"
  "(vla:get-value var)"
  (cond ((listp var)
      (mapcar (quote vla:get-value)
        var))
    ((p:variantp var)
      (vla:get-value (vlax-variant-value var)))
    ((p:safearrayp var)
      (mapcar (quote vla:get-value)
        (vlax-safearray->list var)))
    (t var)))
