(defun example:prev-var (/ k) 
  "上次输入的值作为默认值的示例"
  ""
  "(example:prev-var)"
  (if (not (and prev-var (p:stringp prev-var)))(setq prev-var "D"))
  (initget "A W V D S B")
  (if (setq k (getkword 
               (strcat 
		"位置[A 在文字左边,W 在注解左边,V 在改模文字左边,D 在文字右边,S 手动添加,B 在模具BOM序号左边]<"
                prev-var
		">:")))
      (setq prev-var k))
  prev-var)
