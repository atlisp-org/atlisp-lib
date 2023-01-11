(defun dcl:button (key label style)
  "dcl 按钮。"
  ""
  "(dcl:button \"btn1\"
    \"Button1\"
    \"\")"
  (set (read (strcat "cb-"
		     key))
       (eval (read (strcat "(lambda()(alert (strcat \"需要定义回调函数 (cb-"
			   key ")\")))"))))
  (write-line (strcat ":button{key=\""
		      key "\";"
		      "label=\""
		      label "\";"
		      "action=\"(cb-"
		      key ")\";"
		      (dcl:lst2dcl style) "}")
	      dcl-fp))
