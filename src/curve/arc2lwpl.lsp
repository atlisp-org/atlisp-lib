(defun curve:arc2lwpl (ent-arc int / pt-center r pts bulge convexity ent i)
  "将圆弧转换成 由 int 段组成的多段线, int 不小于 1"
  "多段线图元"
  (setq pt-center (entity:getdxf ent-arc 10)
	r (entity:getdxf ent-arc 40))
  (setq pts (quote nil))
  (setq begin-ang (entity:getdxf ent-arc 50))
  (setq end-ang (entity:getdxf ent-arc 51))
  
  (setq rad (- (entity:getdxf ent-arc 51)
	       (entity:getdxf ent-arc 50)))
  (if (< rad 0)(setq rad (+ rad (* 2 pi))))
  (setq bulge (curve:o2bulge (polar pt-center begin-ang r)
			     (polar pt-center (+ begin-ang
						 (/ rad
						    int))
				    r)
			     pt-center))
  (setq i 0)
  (repeat (1+ int)
	  (setq pts (cons (polar pt-center (+ begin-ang (* i (/ rad int)))
				 r)
			  pts))
	  (setq i (1+ i))
	  (setq convexity (cons (- bulge)
				convexity)))
  (push-var)
  (setvar "osmode"
	  0)
  (setq ent (entity:putdxf (entity:putdxf (entity:make-lwpline-bold pts convexity nil 0 0)
        8 (entity:getdxf ent-arc 8))
      62 (if (entity:getdxf ent-arc 62)
        (entity:getdxf ent-arc 62)
        256)))
  (pop-var)
  ent)
