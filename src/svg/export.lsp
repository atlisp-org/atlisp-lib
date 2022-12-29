(defun svg:export (ss path / i out lst-ss) 
  "将选择的图元生成SVG, ss 选择集,path 输出文件路径。当前只支持二维多段线和线段"
  ""
  ;; svg 是坐标系O点是左上，Y轴向下为正，与CAD是相反的。
  (setq lst-ss (pickset:to-list ss))
  (setq lst-ss (vl-remove-if-not
		'(lambda(x)
		   (wcmatch (entity:getdxf x 1)
			    "lwpolyline,line"))
		lst-ss))
  (setq box (pickset:getbox ss 1))
  (setq w (- (car (cadr box))(car (car box))))
  (setq h (- (cadr (cadr box))(cadr (car box))))
  (setq ox (car (car box)))
  (setq oy (cadr (car box)))
  (setq out (open path "w"))
  (write-line "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"no\"?>" out)
  (write-line (strcat "<svg width=\"200\" height=\"200\" viewBox=\"0 0 "
		      (rtos w 2 1)" "(rtos h 2 1)
		      "\" version=\"1.1\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\">")
    out)
  (foreach
   curve lst-ss
   
   (write-line (strcat "<polyline points=\""
		       (string:from-list
			(mapcar 
			 '(lambda (x) 
			    (strcat (rtos (- (car x) ox) 2 3)","(rtos (- h (- (cadr x) oy)) 2 3)
				    ))
			 (curve:get-points curve))
			" ")
		       "\" style=\"fill:white;stroke:red;stroke-width:5\" />") 
               out))
  (write-line "</svg>" out)
  (close out)
  (princ))
