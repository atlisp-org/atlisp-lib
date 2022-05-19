(defun dcl:dialog-end-ok-cancel nil "完成创建 DCL文件 ， 并关闭文件指针。"
  ""
  (write-line ":spacer{} ok_cancel;}"
    dcl-fp)
  (close dcl-fp))
