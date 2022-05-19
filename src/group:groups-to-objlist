(defun group:groups-to-objlist (/ i obj-g)
    "将编组集转为编组对象列表."
    (setq i 0)
    (setq obj-g (quote nil))
    (while (< i (vla-get-count *grps*))
        (setq obj-g (cons (vla-item *grps* i)
                obj-g))
        (setq i (1+ i)))
    obj-g)
