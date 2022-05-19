(defun pickset:delsameent (ss / list1 s9 xy)
  "删除重复图元\n参数:\nss:选择集"
  "无"
  "(entity:DelSameEnt (ssget))"
  (foreach e (pickset->list ss)
    (setq xy (cdr (entget e)))
    (if (setq s9 (assoc 5 xy))
      (setq xy (subst (quote (5 . "ASD"))
          s9 xy)))
    (if (member xy list1)
      (entdel e)
      (setq list1 (cons xy list1))))
  (princ))
