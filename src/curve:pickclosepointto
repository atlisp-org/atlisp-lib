(defun curve:pickclosepointto (obj p / p1 p2 pp)
  "多段线上距离点击点最近的一个顶点"
  (setq pp (curve:subsegment-picked-points obj p))
  (setq p1 (car pp))
  (setq p2 (cadr pp))
  (if (< (distance p p1)
      (distance p p2))
    p1 p2))
