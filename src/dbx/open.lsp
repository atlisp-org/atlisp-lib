(defun dbx:open (dwg-file / dbx)
  "以DBX方式打开dwg文件"
  "打开成功返回DBX对象，没有发现文件返回nil"
  (if (null *dbx*)(dbx:interface))
  (if (findfile dwg-file)
      (progn
	(vla-open *dbx* (findfile dwg-file))
	*dbx*
	)))
