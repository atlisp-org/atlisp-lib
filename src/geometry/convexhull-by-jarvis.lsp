(defun geometry:convexhull-by-jarvis (pts / pfirst p0 p1 pmax1 pmax2 pp)
  "最小凸包算法: jarvis 步进法，package wrapping or gift wrapping"
  (cond ((= (length pts)
        0)
      nil)
    ((or nil (= (length pts)
          1)
        (= (length pts)
          2))
      (progn (alert "你输入的点为两点或一点!")
        pts))
    (t (progn (defun det2 (p1 p2)
          (- (* (car p1)
              (cadr p2))
            (* (car p2)
              (cadr p1))))
        (defun det (p1 p2 p3)
          (+ (det2 p1 p2)
            (det2 p2 p3)
            (det2 p3 p1)))
        (defun sign (x)
          (cond ((> x 0)
              -1.0)
            ((< x 0)
              1.0)
            (t 0)))
        (defun ang (p1 p2 p3 / x)
          (setq x (abs (- (angle p1 p3)
                (angle p1 p2))))
          (if (equal p3 p1 1.0e-08)
            (- pi)
            (if (< (abs (sin x))
                1.0e-08)
              (if (equal (- (distance p2 p3)
                    (+ (distance p1 p2)
                      (distance p1 p3)))
                  0 1.0e-08)
                pi 0)
              (if (> x pi)
                (* (- (* 2 pi)
                    x)
                  (sign (det p2 p1 p3)))
                (* x (sign (det p2 p1 p3)))))))
        (defun maxium (pts)
          (car (vl-sort pts (quote (lambda (e1 e2)
                  (if (equal (car e1)
                      (car e2)
                      1.0e-08)
                    (> (cadr e1)
                      (cadr e2))
                    (> (car e1)
                      (car e2))))))))
        (setq p0 (maxium pts))
        (setq p1 p0 pfirst p0 p0 (list (car p0)
            (+ 1.0 (cadr p0))
            (caddr p0)))
        (setq pmax1 p1)
        (setq p1 (mapcar (quote (lambda (x)
                (list (ang p1 p0 x)
                  (distance p1 x)
                  x)))
            pts))
        (setq pmax2 (caddr (maxium p1)))
        (setq pp (cons pmax2 (list pmax1)))
        (while (not (equal pfirst pmax2 1.0e-08))
          (setq p1 (mapcar (quote (lambda (x)
                  (list (ang pmax2 pmax1 x)
                    (distance pmax2 x)
                    x)))
              (mapcar (quote caddr)
                p1)))
          (setq pmax1 pmax2)
          (setq pmax2 (caddr (maxium p1)))
          (setq pp (cons pmax2 pp)))
        (reverse (cdr pp))))))
