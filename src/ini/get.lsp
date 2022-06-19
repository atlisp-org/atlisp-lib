(defun-q ini:get (lst-ini node attr )
  "取 ini 的某项的值。lst-ini ini文件的解析结果表, node 节 ，attr 属性项"
  "String"
  (setq node (strcat "["(vl-string-trim "[] " node)"]"))
  (cdr (assoc attr (cdr (assoc node lst-ini))))
  )
