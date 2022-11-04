(defun geometry:convexhull-by-graham-scan (pts / d i p0)
  "graham-scan算法计算点集凸包\n参数: pts:点表"
  "凸包点表"
  "(geometry:convexhull-by-graham-scan '(pt1 pt2 pt3 ...))"
  (setq pts (vl-sort pts (quote (lambda (p1 p2)
          (cond ((< (cadr p1)
                (cadr p2)))
            ((equal (cadr p1)
                (cadr p2)
                1.0e-08)
              (< (car p1)
                (car p2))))))))
  (setq p0 (car pts))
  (setq pts (vl-sort (cdr pts)
      (function (lambda (p1 p2 / m n)
          (cond ((< (setq m (angle p1 p0))
                (setq n (angle p2 p0))))
            ((equal m n 1.0e-08)
              (< (distance p1 p0)
                (distance p2 p0))))))))
  (setq pt-hull (list (cadr pts)
      (car pts)
      p0))
  (foreach curpt (cddr pts)
    (setq pt-hull (cons curpt pt-hull))
    (while (and (caddr pt-hull)
        (geometry:turn-right-p (caddr pt-hull)
          (cadr pt-hull)
          curpt))
      (setq pt-hull (cons curpt (cddr pt-hull)))))
  pt-hull)
