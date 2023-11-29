(defun dbx:interface ()
  "返回DBX的实例化接口"
  "Obj"
  (if (> (@:acadver) 17)
      (setq *dbx* (vlax-get-or-create-object (strcat "ObjectDBX.AxDbDocument."(itoa (fix(@:acadver))))))
      (setq *dbx* (vla-getInterfaceobject *ACAD* (strcat "ObjectDBX.AxDbDocument."(itoa (fix(@:acadver))))))
      ))
