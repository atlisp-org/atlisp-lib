(defun pickset:intersect (ss1 ss2)
  "求两个选择集的交集，ss1,ss2 为选择集，图元列表。"
  "图元列表"
  "(pickset:intersect (ssget)(ssget))"
  (if (p:picksetp ss1)
      (setq ss1 (pickset:to-list ss1)))
  (if (p:picksetp ss2)
      (setq ss2 (pickset:to-list ss2)))
  (if (and (p:ename-listp ss1)
	   (p:ename-listp ss2))
      (vl-remove-if
       '(lambda (x)
	 (not (member x ss2)))
       ss1)))
	   
