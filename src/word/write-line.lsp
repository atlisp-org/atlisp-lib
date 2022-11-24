(defun word:write-line (ax-doc text / end)
  "向 word 的文档对象最后写入文本。"
  (setq	end
	(vlax-get-property
	 (vlax-get-property
	  (vlax-get-property
	   ax-doc
	   'Paragraphs)
	  'Last
	  )
	 'Range
	 )
	)
  (vlax-invoke end 'InsertAfter text)
  )
