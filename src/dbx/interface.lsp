(defun dbx:interface ()
  "返回DBX的实例化接口"
  "Obj"
  (if (or (null *DBX*)
	  (vlax-object-released-p *DBX*))
      (setq *dbx* (vla-getInterfaceobject *ACAD* (strcat "ObjectDBX.AxDbDocument."(itoa (fix(@:acadver))))))))
