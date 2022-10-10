(defun dcl:dialog-end-ok-cancel nil
  "带okcancel结束DCL文件并关闭文件指针。"
  ""
  (write-line ":spacer{} ok_cancel;}"
    dcl-fp)
  (close dcl-fp))
