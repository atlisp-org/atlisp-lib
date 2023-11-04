(defun pickset:to-ax (ss / ssetobj objs cnt)
  "将选择集或图元列表转化为ActiveX选择集对象"
  "Object"
  (if (= 'pickset (type  ss))
      (setq ss (pickset:to-list ss)))
  (setq ssetobj (vla-Add (vla-get-SelectionSets *doc*) (strcat  "ss" (@:timestamp))))
  
  (setq objs (vlax-make-safearray vlax-vbObject (cons 0 (1- (length ss))))
        cnt 0)
  (foreach obj% (pickset:to-vlalist ss)
           (vlax-safearray-put-element objs cnt obj%)
           (setq cnt (1+ cnt))
	   )
  (vla-AddItems ssetobj objs)
  ssetobj)
