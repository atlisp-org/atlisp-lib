(defun dbx:interface ()
  "返回DBX的实例化接口"
  "Obj"
  (setq *dbx* (vla-getInterfaceobject *ACAD* (strcat "ObjectDBX.AxDbDocument."(itoa (fix(@:acadver)))))))
