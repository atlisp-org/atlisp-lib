(defun dbx:open (dwg-file / dbx)
  "以DBX方式打开dwg文件"
  "Obj"
  (if (null *dbx*)(dbx:interface))
  (if (findfile dwg-file)
      (vla-open *dbx* (findfile dwg-file))
  ))
