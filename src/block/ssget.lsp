(defun block:ssget (sel-method blknames lst-attr / ss ss-res ss0)
  "选择满足指定属性标记及对应值的块。
参数：sel-method 参照ssget。当为x时选择全部，无需交互。如需相应的点参数时，需以列表的形式给出如'(\"c\" pt1 pt2)，需手动选择时设为nil。
参数: blknames 块名(支持通配符)，或块名列表,或nil
参数: lst-attr 属性名与值的点对表或nil"
  "满足条件的选择集"
  "(block:ssget \"x\" '(\"块1\" \"块2\")'((\"属性1\" . \"值1\")(\"属性2\" . \"值2\")))"
  (cond
    ((= (quote str)(type blknames))
     (setq blknames (list blknames)))
    )     
  (setq ss-res (ssadd))
  (cond
    ((null sel-method)
     (setq ss0 (ssget '((0 . "insert")))))
    ((p:stringp sel-method)
     (setq ss0 (ssget sel-method '((0 . "insert")))))
    ((and sel-method (listp sel-method))
     (setq ss0 (apply 'ssget (append sel-method (list '((0 . "insert"))))))
     )
    (t (setq ss0 (ssget "x" '((0 . "insert"))))
       ))
  (if (setq lst-ent (pickset:to-list ss0))
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

;; 用法示例
(block:ssget nil "块名" nil)  ;; 选择块真实名为  ”块名“ 的块，需手动框选
(block:ssget "x" "块名" nil)  ;; 选择所有块真实名为  ”块名“ 的块.
(block:ssget (list "c" (getpoint) (getpoint))  "块名" nil)  ;; 叉选给定两点的矩形框内的块真实名为 ”块名“ 的块.
(block:ssget (list "w" (getpoint) (getpoint))  "块名" nil)  ;; 窗选给定两点的矩形框内的块真实名为 ”块名“ 的块.
(block:ssget nil "块名" '(("属性1" . "A")))  ;; 选择块真实名为  ”块名“ 的且属性1的值为A块，需手动框选
(block:ssget nil "块名" '(("属性1" . "A")))  ;; 选择所有块真实名为  ”块名“ 的且属性1的值为A块.
