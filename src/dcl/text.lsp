(defun dcl:text (key label style)
  "dcl 显示文本。"
  ""
  "(dcl:text \"text1\" \"text string\" \"\")"
  ;; (set (read (strcat "in-"
  ;; 		     key))
  ;;      (eval (read (strcat "(lambda()(alert (strcat \"需要定义回调函数 (cb-"
  ;; 			   key ")\")))"))))
  (write-line (strcat ": text{key=\""
		      key "\";"
		      "label=\""
		      label "\";"
		      (dcl:lst2dcl style) "}")
	      dcl-fp))
