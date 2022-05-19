(defun vectra:xprop-replace (ename appname prop datadef / xdata xdata2 tmp)
  (if (atom (car prop))
    (setq prop (list prop)))
  (vectra:xdata-set ename appname (vectra:xprop-pack prop datadef)))
