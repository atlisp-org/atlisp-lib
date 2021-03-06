(defun dcl:error (msg)
  "dcl 系列函数的错误处理，当dcl 运行出错后的一系列扫尾工作，防止对话框无法关闭而只能强行结束任务的情况。"
  (term_dialog)
  (if dcl-id (unload_dialog dcl-id))
  (if (= (quote file)
      (type dcl-fp))
    (close dcl-fp))
  (if (and (= (quote str)
        (type dcl-tmp))
      (findfile dcl-tmp))
    (vl-file-delete dcl-tmp))
  (@:*error* msg))
