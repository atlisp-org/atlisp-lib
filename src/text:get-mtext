(defun text:get-mtext (en-mtext / dxfs)
  "取多行文件的内容。当内容长度大于255时，会有多个组码 3.本函数用于组合这些字符串为一整体。"
  "字符串"
  ""
  (setq dxfs (entget en-mtext))
  (apply (quote strcat)
    (mapcar (quote cdr)
      (vl-remove-if (quote (lambda (x)
            (and (/= 3 (car x))
              (/= 1 (car x)))))
        dxfs))))
