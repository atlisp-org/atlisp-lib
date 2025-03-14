(defun color:rgb2truecolor (rgb / ci)
  "RGB值列表转为真彩色值"
  "long"
  "(color:rgb2truecolor (list 3 5 8))"
  (setq ci (color:interface))
  (vla-put-entitycolor ci (apply 'color:rgb rgb))
  )
