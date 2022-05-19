(defun pickset:sort (sspts key fuzz / e en fun lst n sortpts sortpts1)
  "通用选择集，点表，图元列表排序\n参数:ssPts:选择集，点表，图元列表\n参数:KEY:xyzXYZ 任意组合 ,例如\"yX\",y在前表示y坐标优先，小y表示从小到大(注:二维点时，不能有z)\n参数:FUZZ:数值，允许偏差；"
  "结果根据ssPts不同"
  (defun sortpts (pts fun xyz fuzz)
    (vl-sort pts (quote (lambda (a b)
          (if (not (equal (xyz a)
                (xyz b)
                fuzz))
            (fun (xyz a)
              (xyz b)))))))
  (defun sortpts1 (pts key fuzz)
    (setq key (vl-string->list key))
    (foreach xyz (reverse key)
      (cond ((< xyz 100)
          (setq fun >)
          (setq xyz (nth (- xyz 88)
              (list car cadr caddr))))
        (t (setq fun <)
          (setq xyz (nth (- xyz 120)
              (list car cadr caddr)))))
      (setq pts (sortpts pts fun xyz fuzz))))
  (cond ((= (type sspts)
        (quote pickset))
      (repeat (setq n (sslength sspts))
        (if (and (setq e (ssname sspts (setq n (1- n))))
            (setq en (entget e)))
          (setq lst (cons (append (cdr (assoc 10 en))
                (list e))
              lst))))
      (mapcar (quote last)
        (sortpts1 lst key fuzz)))
    ((listp sspts)
      (cond ((vl-consp (car sspts))
          (sortpts1 sspts key fuzz))
        ((= (type (car sspts))
            (quote ename))
          (foreach e sspts (if (setq en (entget e))
              (setq lst (cons (append (cdr (assoc 10 en))
                    (list e))
                  lst))))
          (mapcar (quote last)
            (sortpts1 lst key fuzz)))
        (t (cond ((equal key "X")
              (vl-sort sspts (quote >)))
            (t (vl-sort sspts (quote <)))))))))