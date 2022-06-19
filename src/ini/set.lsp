(defun ini:set (lst-ini node attr value / sub)
  "设置 ini 的某项的值。lst-ini ini文件的解析结果表, node 节 ，attr 属性项, value 值。"
  "lst-ini"
  (setq node (strcat "["(vl-string-trim "[] " node)"]"))
  (setq sub (cdr (assoc node lst-ini)))
  (setq sub (subst (cons attr value)(assoc attr sub) sub))
  (setq lst-ini (subst (cons node sub)(assoc node lst-ini) lst-ini))
  )
