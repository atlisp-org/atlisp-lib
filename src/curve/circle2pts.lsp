(defun curve:circle2pts (ent-circle int / pt-center r pts bulge convexity ent i)
  "求圆上 int 个均分的点。"
  "list"
  (setq int (fix int))
  (if (< (fix int)
	 2)
      (setq int 2))
  (setq pt-center (entity:getdxf ent-circle 10)
	r (entity:getdxf ent-circle 40))
  (setq pts (quote nil))
  (setq i 0)
  (repeat int
	  (setq pts (cons (polar pt-center (* i (/ (* 2 pi)
						   int))
				 r)
			  pts))
	  (setq i (1+ i)))
  pts)
