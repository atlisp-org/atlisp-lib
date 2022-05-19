(defun vla:buildfilter (filter)
    "构建variant列表\n参数：\nfilter:点对列表"
    "variant列表"
    "(vla:buildfilter '((1 . \"123\")(2 . \"4556\")))"
    (vl-load-com)
    (mapcar (quote (lambda (lst typ)
                (vlax-make-variant (vlax-safearray-fill (vlax-make-safearray typ (cons 0 (1- (length lst))))
                        lst))))
        (list (mapcar (quote car)
                filter)
            (mapcar (quote cdr)
                filter))
        (list vlax-vbinteger vlax-vbvariant)))
