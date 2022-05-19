(defun vectra:xprop-get (ename appname names / xdata rv)
  (setq xdata (vectra:xdata-get ename appname))
  (cond ((atom names)
      (while xdata (if (= names (cdar xdata))
          (setq rv (cdadr xdata)
            xdata nil))
        (setq xdata (cddr xdata))))
    ((vl-consp names)
      (while xdata (if (member (cdar xdata)
            names)
          (setq rv (cons (cons (cdar xdata)
                (cdadr xdata))
              rv)
            names (vl-remove (cdar xdata)
              names)))
        (setq xdata (cddr xdata)))))
  rv)