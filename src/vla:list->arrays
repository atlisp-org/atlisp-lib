(defun vla:list->arrays (nlist arraytype)
    "表->安全数组类型（多维数组，多于二维报错）\narg:\nnlist:列表，要求数据的类型要和arraytype一致，表的各维必须为表\narraytype:可指定如下常量：可以用后面的数字也可以用前面的类型符号"
    "多维数组"
    "vla:list->arrays '((1 2)
        (3 4))
    vlax-vbinteger)"
(vlax-safearray-fill (apply (quote vlax-make-safearray)
        (cons arraytype (mapcar (quote (lambda (x)
                        (cons 0 (1- (length x)))))
                nlist)))
    nlist))
