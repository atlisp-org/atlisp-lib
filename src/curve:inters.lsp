(defun curve:inters (obj1 obj2 mode / getinterpts inter-objlist inter-objlists inter-picksets inter-ss inter-ss-obj res)
  "获取对象交点列表\n参数 obj1 obj2 : 选择集，vla对象，图元名，vla对象表，图元表，nil\n参数 mode: 该参数只有obj1、obj2为图元或vla对象时，服从下列设置，其他情况均默认对象不延伸\n           obj1 和 obj2 参数可任意组合，但不能全为nil\n           acExtendNone 对象不延伸\n           acExtendThisEntity 延伸obj1\n           acExtendOtherEntity 延伸obj2\n           acExtendBoth 对象都延伸\n           nil = acExtendNone 对象不延伸"
  "对象交点列表"
  "(curve:inters obj1 obj2 acExtendNone)"
  (or mode (setq mode acextendnone))
  (defun getinterpts (obj1 obj2 mode / iplist)
    (or (p:vlap obj1)
      (setq obj1 (vlax-ename->vla-object obj1)))
    (or (p:vlap obj2)
      (setq obj2 (vlax-ename->vla-object obj2)))
    (setq iplist (vl-catch-all-apply (quote vlax-safearray->list)
        (list (vlax-variant-value (vla-intersectwith obj1 obj2 mode)))))
    (if (vl-catch-all-error-p iplist)
      nil (list:split-3d iplist)))
  (defun inter-ss-obj (ss obj / res1)
    (foreach i (pickset->vlalist ss)
      (setq res1 (append res1 (getinterpts i obj acextendnone))))
    res1)
  (defun inter-ss (ss)
    (inter-objlist (pickset->vlalist ss)))
  (defun inter-objlist (lst / ob1 rtn)
    (while (setq ob1 (car lst))
      (foreach ob2 (setq lst (cdr lst))
        (setq rtn (cons (getinterpts ob1 ob2 acextendnone)
            rtn))))
    (apply (quote append)
      (reverse rtn)))
  (defun inter-objlists (ol1 ol2 / rtn)
    (foreach ob1 ol1 (foreach ob2 ol2 (setq rtn (cons (getinterpts ob1 ob2 acextendnone)
            rtn))))
    (apply (quote append)
      (reverse rtn)))
  (defun inter-picksets (ss1 ss2)
    (inter-objlists (pickset->vlalist ss1)
      (pickset->vlalist ss2)))
  (cond ((and (or (p:vlap obj1)
          (p:enamep obj1))
        (or (p:vlap obj2)
          (p:enamep obj2)))
      (setq res (getinterpts obj1 obj2 mode)))
    ((and (or (p:vlap obj1)
          (p:enamep obj1))
        (p:picksetp obj2))
      (setq res (inter-ss-obj obj2 obj1)))
    ((and (or (p:vlap obj2)
          (p:enamep obj2))
        (p:picksetp obj1))
      (setq res (inter-ss-obj obj1 obj2)))
    ((and (p:picksetp obj1)
        (not obj2))
      (setq res (inter-ss obj1)))
    ((and (p:picksetp obj2)
        (not obj1))
      (setq res (inter-ss obj2)))
    ((and (p:picksetp obj1)
        (p:picksetp obj2))
      (setq res (inter-picksets obj1 obj2)))
    ((and (p:vla-listp obj1)
        (not obj2))
      (setq res (inter-objlist obj1)))
    ((and (vla-listp obj2)
        (not obj1))
      (setq res (inter-objlist obj2)))
    ((and (p:vla-listp obj1)
        (p:vla-listp obj2))
      (setq res (inter-objlists obj1 obj2)))
    ((and (ename-listp obj1)
        (not obj2))
      (setq res (inter-objlist (enamelist->vla obj1))))
    ((and (ename-listp obj2)
        (not obj1))
      (setq res (inter-objlist (enamelist->vla obj2))))
    ((and (p:ename-listp obj1)
        (p:ename-listp obj2))
      (setq res (inter-objlists (enamelist->vla obj1)
          (enamelist->vla obj2))))
    (t (setq res nil)))
  res)