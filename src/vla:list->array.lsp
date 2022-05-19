(defun vla:list->array (nlist arraytype)
    "表->安全数组类型（一维数组）\n参数：\nnlist:列表，要求数据的类型要和arraytype一致\narraytype:可指定如下常量：可以用后面的数字也可以用前面的类型符号\n"
    "一维数组"
    "(vla:list->array '(1 2 3 4)
        vlax-vbinteger)"
    (vlax-safearray-fill (vlax-make-safearray arraytype (cons 0 (1- (length nlist))))
        nlist))
