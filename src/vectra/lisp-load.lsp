(defun vectra:lisp-load (filename /)
  (if (setq content (vectra:file-readstring filename))
    (read content)
    (princ (strcat "\npsk-load-lispfile错误: 无法加载文件 \""
        filename "\""))))
