(defun dcl:image-button (key width height style)
  "dcl 图像按钮。"
  ""
  "(dcl:image-button \"btn1\" 30 60 nil)"
  (set (read (strcat "cb-"
		     key))
       (eval (read (strcat "(lambda()(alert (strcat \"需要定义回调函数 (cb-"
			   key ")\")))"))))
  (write-line (strcat ":image_button{key=\""
		      key "\";width="
		      (rtos width 2)
		      ";height="
		      (rtos height 2)
		      ";color=152;"
		      "action=\"(cb-"
		      key ")\";"
		      (dcl:lst2dcl style) "}")
	      dcl-fp))
