(defun layer:delete (layers / each out)
  "删除图层。参数支持名称，图元，vla-object以及它们的列表。删除前需清空图层中的图元。"
  "t or nil"
  (if (not (listp layers))
      (setq layers (list layers)))

  (setq layers
	(mapcar '(lambda(x)
		  (cond
		    ((p:stringp x)
		     (e2o(tblobjname "layer" x)))
		    ((p:enamep x)
		     (e2o x))
		    ((p:vlap x)
	       x)))
		layers))
  (if (null (ssget"x" (list (cons 8 (string:from-list (mapcar '(lambda(x)(vla-get-name x))layers)",")))))
      (apply 'and (mapcar vla-delete layers))
      )
  )
