(defun pickset:zoom (ss / box)
  "缩放选择集ss到当前视口.
显示的屏占比可由设置选项 @:magnify 控制，
其值越大，放大率越低。默认满屏"
  ""
  "(pickset:zoom (ssget))"
  (setq box (pickset:getbox ss 0))
  (vla-ZoomCenter 
   *ACAD*
   (apply 'vlax-3D-point (point:centroid box))
   (* (if (and (setq magnify (@:get-config '@:magnify))
	       (> magnify 0.01))
	  magnify
	1)
      (/ 
       (apply 
	'max
	(mapcar 
         '/
         (mapcar '- (cadr box) (car box))
         (getvar "SCREENSIZE")
	 ))
       0.001
       ))))
