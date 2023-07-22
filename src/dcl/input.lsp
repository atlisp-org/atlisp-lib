(defun dcl:input (key label default style)
  "dcl 输入框。"
  ""
  "(dcl:input \"in1\" \"label\" \"3\" \"\")"
  ;; (set (read (strcat "in-"
  ;; 		     key))
  ;;      (eval (read (strcat "(lambda()(alert (strcat \"需要定义回调函数 (cb-"
  ;; 			   key ")\")))"))))
  (write-line (strcat ": edit_box{key=\""
		      key "\";"
		      "label=\""
		      label "\";"
		      "value=\""
		      default "\";"
		      (dcl:lst2dcl style) "}")
	      dcl-fp))
