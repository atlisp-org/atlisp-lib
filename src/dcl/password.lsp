(defun dcl:password (key label default style)
  "dcl 密码输入框。"
  ""
  "(dcl:password \"pw1\" \"label\" \"abc\" \"\")"
  ;; (set (read (strcat "in-"
  ;; 		     key))
  ;;      (eval (read (strcat "(lambda()(alert (strcat \"需要定义回调函数 (cb-"
  ;; 			   key ")\")))"))))
  (write-line (strcat ": edit_box{key=\""
		      key "\";"
		      "label=\""
		      label "\";"
		      "value=\""
		      default "\";password_char=\"*\";"
		      (dcl:lst2dcl style) "}")
	      dcl-fp))
