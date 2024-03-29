(defun curve:rectanglep (ent)
  "测试一个多段线是否为矩形,判断矩形"
  "T or nil"
  (and
   (= 'ename (type ent))
   (wcmatch (entity:getdxf ent 0) "*POLYLINE") ;; 是多段线
   (or ;; 4点且闭合 或 5点首尾点相同
    (and (= (entity:getdxf ent 90) 4)
	 (= (entity:getdxf ent 70) 1))
    (and (= (entity:getdxf ent 90) 5)
	 (= (entity:getdxf ent 70) 0)))
   (apply '= (entity:getdxf ent 42))
   (progn
     (setq pts (curve:get-points ent))
     (setq ang
	   (abs
	    (- (angle (nth 0 pts)(nth 1 pts))
	       (angle (nth 1 pts)(nth 2 pts)))))
     (if (> ang pi)(setq ang (- ang pi)))
     ;; 邻边垂直,对边相等且对角长度相等
     (and
      (equal ang (* pi 0.5) 1e-6)
      (equal (distance (nth 0 pts)(nth 1 pts))
	     (distance (nth 2 pts)(nth 3 pts))
	     1e-6)
      (equal (distance (nth 0 pts)(nth 2 pts))
	     (distance (nth 1 pts)(nth 3 pts))
	     1e-6)
      (if (nth 4 pts) ;; 存在第5点时，第5点同第1点
	  (< (distance (nth 0 pts)(nth 4 pts)) 1e-6)
	t)
      ))))


