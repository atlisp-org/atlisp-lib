(defun block:ssget (blknames lst-attr / ss ss-res)
  "选择满足指定属性标记及对应值的块\n参数: blknames 块名(支持通配符)，或块名列表,或nil\n参数: lst-attr 属性名与值的点对表或nil"
  "满足条件的选择集"
  "(block:ssget '(\"块1\" \"块2\")'((\"属性1\" . \"值1\")(\"属性2\" . \"值2\")))"
  (cond
    ((= (quote str)(type blknames))
     (setq blknames (list blknames)))
    )     
  (setq ss-res (ssadd))
  (if (setq lst-ent (pickset:to-list (ssget "x"
					    (quote ((0 . "insert"))))))
      (foreach
       ent% lst-ent
       (if (and (or
		 (null blknames)
		 (member (block:get-effectivename ent%)
			 blknames)
		 (apply 'or
			(mapcar '(lambda(x)(wcmatch (block:get-effectivename ent%) x))
				blknames)))
		(or (null lst-attr)
		    (apply (quote and)
			   (mapcar (quote (lambda (x)
					    (member x (block:get-attributes ent%))))
				   lst-attr))))
	   (ssadd ent% ss-res))))
  (sssetfirst nil ss-res)
  ss-res)
