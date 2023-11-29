(defun dbx:release ()
  "释放DBX接口"
  (if (and *DBX*
	   (= 'vla-object  (type *DBX*))
	   (null (vlax-object-released-p *DBX*)))
      (vlax-release-object *DBX*)))
