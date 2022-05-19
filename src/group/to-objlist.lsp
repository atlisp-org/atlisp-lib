(defun group:to-objlist (obj-g / i objlst)
    "编组转图元对象列表, obj-g 为编组对象。"
    (setq i 0)
    (setq objlst (quote nil))
    (while (< i (vla-get-count obj-g))
        (setq objlst (cons (vla-item obj-g i)
                objlst))
        (setq i (1+ i)))
    objlst)
