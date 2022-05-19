(defun sys:list-process-name nil "获取当前运行的进程名(exe文件名)。"
  "String"
  (mapcar (quote (lambda (x)
        (vlax-get x (quote name))))
    (sys:list-process)))
