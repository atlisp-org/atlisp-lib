(defun dcl:end-dialog (str-yes-no / para)
  "完成创建DCL文件并关闭文件指针。
参数 str-Yes-No 字符串用 - 分隔成两部分，前面为accept,后面为 Cancel.如 是-否，愿意-不愿意。"
  ""
  (if (null str-yes-no)
      (setq str-yes-no "Yes-No"))
  (setq para (string:to-list str-yes-no "-"))
  (cond ((= (length para)
            0)
	 (setq para (list "是" "否")))
	((= (length para)
            1)
	 (setq para (list (car para)
			  "否"))))
  (write-line (strcat ":spacer{} : column {: row { fixed_width = true; alignment = centered; : retirement_button { label =\""
		      (car para)"\";key=\"accept\";is_default=true;} :spacer{ width = 2; }:retirement_button {label= \""
		      (cadr para) "\"; key =\"cancel\"; is_cancel = true;}}}}")
	      dcl-fp)
  (close dcl-fp))
