(defun word:save (ax-doc)
  "保存 word 文档，如果是新建的文档，需要先指定文件路径。"
  (vlax-invoke ax-doc 'save))
