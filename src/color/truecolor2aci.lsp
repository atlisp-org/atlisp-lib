(defun color:truecolor2aci (long / ci)
  "真彩色号转为近似的索引色号"
  "int"
  "(color:truecolor2aci 2076128) => 142"
  (setq ci (color:interface))
  (vla-put-entitycolor ci long)
  (vla-get-colorindex ci))
  
  
