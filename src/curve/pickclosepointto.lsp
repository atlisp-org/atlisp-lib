(defun curve:pickclosepointto (obj pt / p1 p2 pp)
  "多段线上距离pt点最近的一个顶点"
  (setq pp (curve:subsegment-picked-points obj pt))
  (setq p1 (car pp))
  (setq p2 (cadr pp))
  (if (< (distance pt p1)
      (distance pt p2))
    p1 p2))
