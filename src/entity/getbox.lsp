(defun entity:getbox (ent offset / lst obj p1 p2 p3 p4 box blkname blk-ents ply-ents pt-base pt-ins ang sca)
  "图元的最小包围盒"
  "return:外框（偏移后）的左下，右上角点"
  "example:(entity:getbox (car(entsel))
  0.1)"
  (cond
   ((= (quote pickset) (type ent))
    (pickset:getbox ent offset))
   (t
    (setq obj (vlax-ename->vla-object ent))
    (setq box (vl-catch-all-apply
	       '(lambda()
		  (vla-getboundingbox
		   obj (quote p1) (quote p3)))))
    (if (not (vl-catch-all-error-p box))
	(progn
	  (setq p1 (vlax-safearray->list p1)
		p3 (vlax-safearray->list p3))
	  (list p1 p3))
      (if (= "INSERT" (entity:getdxf ent 0))
	  (progn
            (setq blkname (entity:getdxf ent 2))
            (setq blk-ents (block:ent-list blkname))
            (setq ply-ents (vl-remove-if-not
                            '(lambda(x)
                               (wcmatch (entity:getdxf x 0) "LWPOLYLINE,LINE"))
                            blk-ents))
            (if ply-ents
		(progn
		  (setq pt-ins (entity:getdxf ent 10))
		  (setq ang (entity:getdxf ent 50))
		  (setq sca (entity:getdxf ent 41))
		  (setq box (pickset:getbox ply-ents 0))
		  (setq pt-base (entity:getdxf (tblobjname "block" blkname) 10))
		  (list (setq p1 (block:bcs2wcs (car box) pt-base pt-ins ang sca))
		         (setq p3 (block:bcs2wcs (cadr box) pt-base pt-ins ang sca))))
	      ))))))
  (if(= "SPLINE" (cdr (assoc 0 (entget ent))))
      (progn (setq lst (mapcar (quote (lambda (a b)
					(vlax-curve-getclosestpointtoprojection ent a b t)))
			       (list p1 (list (car p1)
					      (cadr p3)
					      (caddr p1))
				     p3 (list (car p3)
					      (cadr p1)
					      (caddr p1)))
			       (quote ((1.0 0 0)
				       (0 -1.0 0)
				       (-1.0 0 0)
				       (0 1.0 0)))))
	     (setq p1 (apply (quote mapcar)
			     (cons (quote min)
				 lst))
		   p3 (apply (quote mapcar)
			     (cons (quote max)
				   lst)))))
  (if (or (not offset)
	  (equal offset 0 0.0001))
      (list p1 p3)
    (list (list:- p1 (list offset offset 0))
	  (list:+ p3 (list offset offset 0)))))
