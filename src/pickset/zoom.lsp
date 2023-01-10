(defun pickset:zoom (ss / box)
  "缩放选择集ss到当前视口"
  ""
  (setq box (pickset:getbox ss 0))
  (vla-ZoomCenter 
   *ACAD*
   (apply 'vlax-3D-point (point:centroid box))
   (/ 
    (apply 
      'max
      (mapcar 
        '/
        (mapcar '- (cadr box) (car box))
        (getvar "SCREENSIZE")
      ))
      0.001
    )
   ))
