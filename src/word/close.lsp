(defun word:close (ax-doc)
  "关闭 word 文档"
  (vlax-invoke ax-doc 'close))
