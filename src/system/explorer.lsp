(defun system:explorer (dir-path)
  "在资源管理器中打开指定的文件夹"
  (startapp (strcat "explorer /e,\""dir-path"\""))
  (princ))
