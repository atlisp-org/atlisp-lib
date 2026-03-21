(defun pickset:wblock (ss filename / ssetobj)
  "将选择集写到 filename.dwg 文件中, ss 选择集，选择集对象"
  ""
  "(pickset:wblock ss \"d:/abc.dwg\")"
  (setq ssetobj (pickset:to-selectionset ss))
  (if (and ssetobj
	   (> (vla-get-Count ssetObj) 3))
      (progn
	(vla-wblock *DOC* filename  ssetObj)
	(vla-Clear ssetObj)
 	(vla-Delete ssetObj)
	))
  )
