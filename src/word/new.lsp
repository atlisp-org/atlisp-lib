(defun word:new (ishide / ax-word)
  "新建word 文档\n参数:ishide:是否可见，t为可见，nil为不可见"
  "一个表示word的vla对象"
  "(word:New t)"
  (if (setq ax-word (vlax-get-or-create-object "Word.Application"))
      (progn (vlax-invoke (vlax-get-property ax-word (quote documents))
			  (quote add))
	     (if ishide (vla-put-visible ax-word 1)
               (vla-put-visible ax-word 0))))
  ax-word)
