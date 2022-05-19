(defun vectra:line-closestpoint (line p extend)
  (vlax-curve-getclosestpointto (vectra:ensure-object line)
    p extend))
