(defun word:example (filename str / ax-word ax-doc)
  "word 类函数调用示例"
  "nil"
  ""
  "建立 word app"
  (setq ax-word (word:open filename nil))
  "文档对象 ax-doc"
  (setq ax-doc (vlax-get-property ax-word 'ActiveDocument))
  "向文档对象写内容"
  (word:write-line ax-doc str)
  "关闭文档"
  (word:close ax-doc)
  "关闭 app"
  (word:quit ax-word t))
  
