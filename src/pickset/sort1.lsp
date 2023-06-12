(defun pickset:sort1 (sspts key fuzz / e en fun lst n sortpts sortpts1)
  "图元列表排序\n参数:ssPts:图元列表\n参数:KEY:xyzXYZ 任意组合 ,例如\"yX\",y在前表示y坐标优先，小y表示从小到大(注:二维点时，不能有z)\n参数:FUZZ:数值或列表，允许偏差；"
  "图元列表"
  "(pickset:sort1 (ssget) \"Yx\" '(3000 10)"
  (setq keys (vl-string->list key))
  (setq funs (mapcar '(lambda(xyz) (if (< xyz 100) > <))
		     keys))
  (setq orders (mapcar '(lambda(xyz)
			 (cond ((< xyz 100) (- xyz 88))
			       (t (- xyz 120))))
		       keys))
  (defun equal-compare (fun a b fuzz)
    (if (not (equal a b fuzz))
	(fun a b)))
  (if (atom fuzz)(setq fuzz (list fuzz)))
  (while (< (length fuzz) (length keys))
    (setq fuzz (append fuzz (list (last fuzz)))))

  (if (p:picksetp sspts)
      (setq sspts(pickset:to-list sspts)))
  (vl-sort sspts '(lambda(x y)
		    (apply 'or
			   (mapcar 'equal-compare
				   funs
				   (mapcar '(lambda(m)(nth m (entity:getdxf x 10))) orders)
				   (mapcar '(lambda(m)(nth m (entity:getdxf y 10))) orders)
				   fuzz)))))
