(defun curve:optimize-lwpl-cocircle-all (segs fuzz / res run)
  "遍历多段线段列表，将连续共圆（5 点以上）的多点折线合并为一段圆弧。"
  "合并后的段列表"
  (setq res nil)
  (while segs
    (if (setq run (curve:optimize-lwpl-cocircle segs fuzz))
      (progn
        (setq res (cons (car (car run)) res))
        (setq res (cons (cadr (car run)) res))
        (setq segs (cdr run)))
      (progn
        (setq res (cons (car segs) res))
        (setq segs (cdr segs)))))
  (reverse res))
