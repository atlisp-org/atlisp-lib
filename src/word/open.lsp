(defun word:open (filename ishide / ax-word ax-doc)
  "打开一个word文件\n参数:Filename:文件路径\n参数:ishide:是否可见，t为可见，nil为不可见"
  "一个表示打开的 word 文件的vla对象"
  "(word:open \"D:/1.docx\" t)"
  (if (setq ax-word (vlax-get-or-create-object "Word.Application"))
      (progn
	(if ishide (vla-put-visible ax-word :vlax-true)
          (vla-put-visible ax-word :vlax-false))
	(if (findfile filename)
	    (vlax-invoke (vlax-get-property ax-word (quote documents))
			 (quote open)
			 filename)
	  (progn
	    (vlax-invoke (vlax-get-property ax-word (quote documents))
			 (quote add))
	    (vlax-invoke
	     (vlax-get-property ax-word 'ActiveDocument)
	     'saveas filename)))
	))
  ax-word)

  
