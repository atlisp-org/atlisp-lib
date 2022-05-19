(defun vla:objectvariant (lst)
    "创建vla对象表变体.\n参数：\nlst:vla对象表"
    "变体"
    "(vla:objectvariant lst)"
    (vlax-make-variant (vlax-safearray-fill (vlax-make-safearray vlax-vbobject (cons 0 (1- (length lst))))
            lst)))
