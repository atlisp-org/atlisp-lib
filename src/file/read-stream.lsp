(defun file:read-stream (filename encoding / str stream *error*)
  "读入指定编码的文件内容"
  "String"
  "(file:read-stream \"d:\\hzfile.txt\" \"utf-8\")"
  (defun *error*(msg)
    (if (= 'file (type stream))(close stream))
    (princ msg)
    (princ)
    )
  (if (>= (atof (getvar "acadver")) 24)
      (progn
	(setq stream (open filename "r"))
	(setq str "")
	(while (setq str-line (read-line stream))
	  (setq str (strcat str "\n" str-line)))
	(close stream)
	)
    (progn
      (setq stream (vlax-create-object "ADODB.Stream"))
      (vlax-put-Property stream 'type 2)
      (Vlax-Put-Property stream 'Charset encoding)
      (Vlax-Invoke stream 'open)
      (vlax-invoke-method stream 'LoadFromFile FileName)
      (setq str (Vlax-Invoke-Method stream 'readtext -1)) 
      (Vlax-Invoke-Method stream 'close)
      (vlax-release-object stream)))
  str
  )
