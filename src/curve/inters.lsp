(defun curve:inters (obj1 obj2 mode / getinterpts inter-objlist inter-objlists inter-ss-obj res)
  "获取对象交点列表
参数 obj1 obj2 : 选择集，vla对象，图元名，vla对象表，图元表，nil
参数 mode: 该参数只有obj1、obj2为图元或vla对象时，服从下列设置，其他情况均默认对象不延伸
     obj1 和 obj2 参数可任意组合，但不能全为nil
     acExtendNone 对象不延伸
     acExtendThisEntity 延伸obj1
     acExtendOtherEntity 延伸obj2
     acExtendBoth 对象都延伸
     nil = acExtendNone 对象不延伸"
  "对象交点列表"
  "(curve:inters obj1 obj2 acExtendNone)"
  (or mode (setq mode acextendnone))
  (defun getinterpts (obj1 obj2 mode / iplist)
    (or (p:vlap obj1)
	(setq obj1 (e2o obj1)))
    (or (p:vlap obj2)
	(setq obj2 (e2o obj2)))
    (setq iplist (vl-catch-all-apply (quote vlax-safearray->list)
				     (list (vlax-variant-value (vla-intersectwith obj1 obj2 mode)))))
    (if (vl-catch-all-error-p iplist)
	nil (list:split-3d iplist)))
  ;; 多对1
  (defun inter-ss-obj (ss obj / res1)
    (cond
      ((p:picksetp ss)
       (setq ss (pickset:to-vlalist ss)))
      ((p:ename-listp ss)
       (setq ss (mapcar 'e2o ss))))
    (foreach
     i ss
     (setq res1 (append res1 (getinterpts i obj acextendnone))))
    res1)
  ;; 自交
  (defun inter-objlist (lst / ob1 rtn)
    (cond
      ((= 'pickset (type lst))
       (setq lst (pickset:to-vlalist lst)))
      ((p:ename-listp lst)
       (setq lst (mapcar 'e2o lst)))
      )
    (while (setq ob1 (car lst))
      (foreach ob2 (setq lst (cdr lst))
               (setq rtn (cons (getinterpts ob1 ob2 acextendnone)
			       rtn))))
    (apply (quote append)
	   (reverse rtn)))
  ;; 多对多
  (defun inter-objlists (ol1 ol2 / rtn)
    (cond
      ((= 'pickset (type ol1))
       (setq ol1 (pickset:to-vlalist ol1)))
      ((p:ename-listp ol1)
       (setq ol1 (mapcar 'e2o ol1)))
      )
    (cond
      ((= 'pickset (type ol2))
       (setq ol2 (pickset:to-vlalist ol2)))
      ((p:ename-listp ol1)
       (setq ol2 (mapcar 'e2o ol2)))
      )
    (foreach ob1 ol1
	     (foreach ob2 ol2
		      (setq rtn (cons (getinterpts ob1 ob2 acextendnone)
				      rtn))))
    (apply (quote append)
	   (reverse rtn)))

  (cond
    ;;单对单
    ((and (or (p:vlap obj1)
	      (p:enamep obj1))
          (or (p:vlap obj2)
	      (p:enamep obj2)))
     (setq res (getinterpts obj1 obj2 mode)))
    ;; 多对单
    ((and (or (p:vlap obj1)
	      (p:enamep obj1))
	  (or (p:picksetp obj2)
	      (p:ename-listp obj2)
	      (p:vla-listp obj2)
	      ))
     (setq res (inter-ss-obj obj2 obj1)))
    ((and (or (p:vlap obj2)
	      (p:enamep obj2))
          (p:picksetp obj1))
     (setq res (inter-ss-obj obj1 obj2)))
    
    ;; 自交
    ((and (not obj1)
	  (or (p:picksetp obj2)
	      (p:ename-listp obj2)
	      (p:vla-listp obj2)))
     (setq res (inter-objlist obj2)))
    ((and (not obj2)
	  (or (p:picksetp obj1)
	      (p:ename-listp obj1)
	      (p:vla-listp obj1)))
     (setq res (inter-objlist obj1)))

    ;; 多对多
    ((and(or (p:vla-listp obj1)
	     (p:picksetp obj1)
	     (p:ename-listp obj1)
	     )
	 (or (p:vla-listp obj2)
	     (p:picksetp obj2)
	     (p:ename-listp obj2)))
     (setq res (inter-objlists obj1 obj2)))
    (t (setq res nil)))
  res)
