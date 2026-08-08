(defun base64:base64-to-file (file str-base64 / xmldom node stream)
  "将base64串，解码保存到文件"
  "成功返回t"
  (progn
    (setq xmldom (vlax-get-or-create-object "MSXML2.DOMDocument")
          node   (vlax-invoke-method
                   xmldom
                   'createelement
                   "binary"))
    (vlax-put-property
      node
      'datatype
      "bin.base64")
    (vlax-put-property
      node
      'text
      str-base64)
    (setq stream (vlax-get-or-create-object "ADODB.Stream"))
    (vlax-put-property
      stream
      'type
      1)
    (vlax-invoke-method stream 'open nil nil nil nil nil)
    (vlax-invoke-method
      stream
      'write
      (vlax-get-property node 'nodetypedvalue))
    (vlax-invoke-method
      stream
      'savetofile
      file
      2)
    (vlax-invoke stream 'close)
    (vlax-release-object stream)
    (vlax-release-object node)
    (vlax-release-object xmldom)
    t))