(defun color:truecolor2rgb (long / ci)
  "真彩色号转为RGB值列表"
  "list"
  "(color:truecolor2rgb 2076128)"
  (setq ci (color:interface))
  (vla-put-entitycolor ci long)
  (list (vla-get-red ci)
    (vla-get-green ci)
    (vla-get-blue ci)))
