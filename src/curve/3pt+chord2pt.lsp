(defun curve:3pt+chord2pt (pt1 pt2 pt3 chord-length pt-on-arc / angle1 angle2 center half-chord-angle pt-other radius)
"已知圆弧上三点pt1,pt2,pt3,求此圆弧上和pt-on-arc弦长为chord-length的点"
"多段线图元"
	(setq 		
		center (curve:3pt2o pt1 pt2 pt3)
		radius (distance center pt1)
	)
  ;; 计算中心角
  (setq half-chord-angle (acos (- 1 (/ (expt chord-length 2) (* 2 (expt radius 2))))))
  ;; 计算圆弧上已知点相对于圆心的角度
  (setq angle1 (angle center pt-on-arc))
  ;; 计算另一个点的角度
	(if (> (geometry:turn-right-p pt1 pt2 pt3) 0)
				(setq angle2 (+ angle1 half-chord-angle)) ; 顺时针方向
		(setq angle2 (- angle1 half-chord-angle)) ; 逆时针方向，根据实际情况选择

	)
	(setq pt-other (polar center angle2 radius))
	
	
  ;; 返回另一个点的坐标
  pt-other
)