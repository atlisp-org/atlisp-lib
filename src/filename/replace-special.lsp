(defun filename:replace-special (str)
  "替换文件名中的特殊字符。本函数只适用于单个文件，不适用于带目录的文件名字符串。"
  "String"
  "(filename:replace-special \":s->l.lsp\")"
  (foreach x '(("+" . "*")
	       ("／" . "/")
	       ("：" . ":")
	       ("；" . ";")
	       ("｜" . "|")
	       ("、" . "\\")
	       ("-to-" . "->")
	       ("gt-" . ">")
	       ("-" . "\"")
	       )
	   (setq str (@:string-subst
		      (car x)(cdr x)
		      str))))
