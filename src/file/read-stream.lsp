(defun-q  file:read-stream (filename encoding / str stream)
  "读入指定编码的文件内容"
  "String"
  "(file:read-stream \"d:\\hzfile.txt\" \"utf-8\")"
  (setq stream (vlax-create-object "ADODB.Stream"))
  (vlax-put-Property stream 'type 2)
  (Vlax-Put-Property stream 'Charset encoding)
  (Vlax-Invoke stream 'open)
  (vlax-invoke-method stream 'LoadFromFile FileName)
  (setq str (Vlax-Invoke-Method stream 'readtext -1)) 
  (Vlax-Invoke-Method stream 'close)
  (vlax-release-object stream)
  str
  )
