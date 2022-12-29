(defun svg:export (ss path / i out lst-ss color w h ox oy) 
  "将选择的图元生成SVG, ss 选择集,path 输出文件路径。当前只支持二维多段线和线段"
  ""
  "(svg:export (ssget) \"C:/example.svg\")"
  ;; svg 是坐标系O点是左上，Y轴向下为正，与CAD是相反的。
  (setq lst-ss (pickset:to-list ss))
  ;; (setq lst-ss (vl-remove-if-not
  ;; 		'(lambda(x)
  ;; 		   (wcmatch (entity:getdxf x 0)
  ;; 			    "lwpolyline,line"))
  ;; 		lst-ss))
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
   (setq color (color:rgb2css (entity:get-truecolor curve)))
   (setq bold (entity:getdxf curve 43))
   (if (or (null bold)
	   (and bold (= 0 bold)))
       (setq bold 1))

   (cond
    ((wcmatch (entity:getdxf curve 0) "LWPOLYLINE,LINE")
     (write-line (strcat "<polyline points=\""
			 (string:from-list
			  (mapcar 
			   '(lambda (x) 
			      (strcat (rtos (- (car x) ox) 2 3)","(rtos (- h (- (cadr x) oy)) 2 3)
				      ))
			   (progn
			     (setq pts (curve:get-points curve))
			     (if (and (setq closed (entity:getdxf curve 70))
				    (= 1 closed))
				 (setq pts (append pts (list (car pts))))
			       pts)))
			  " ")
			 "\" style=\"fill:white;stroke:"color";stroke-width:"
			 (rtos bold 2 3)
			 "\" />") 
		 out))
    ((wcmatch (entity:getdxf curve 0) "CIRCLE")
     (setq x (entity:getdxf curve 10))
     (write-line (strcat "<circle cx=\""(rtos (- (car x) ox) 2 3) "\" "
			 "cy=\"" (rtos (- h (- (cadr x) oy)) 2 3) "\" "
			 "r=\"" (rtos (entity:getdxf curve 40) 2 3)"\" "
			 "stroke=\"" color "\" "
			 "stroke-width=\""(rtos bold  2 3)"\" "
			 "fill=\"white\" />")
		 out))
    ))
    
  (write-line "</svg>" out)
  (close out)
  (princ))
