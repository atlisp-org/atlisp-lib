(defun curve:optimize-lwpl-cocircle (segs fuzz / turnlim lengthlim first second a b c cnt tail turnsum dir
                                     lastseg turn)
  "检测从 segs 首点开始的连续共线段折线（5 点以上，相邻两段夹角在 175~185 度之间，且线段长度小于 1）。"
  "((首点 . 弧凸度) (末点 . 末凸度) . 剩余段列表) 或 nil"
  (setq turnlim (* 5.0 (/ pi 180.0)))
  (setq lengthlim 1.0)
  (setq first (caar segs))
  (setq tail (cdr segs))
  (setq a first)
  (setq cnt 1)
  (setq turnsum 0)
  (if (and tail (= 0 (cdar tail)))
    (progn
      (setq b (caar tail))
      (setq second b)
      (setq tail (cdr tail))
      (setq cnt 2)
      (if
        (and
          tail
          (= 0 (cdar tail))
          (< (distance a b) lengthlim)
          (< (distance b (caar tail)) lengthlim)
          (<= (abs (curve:lwpl-turn a b (caar tail))) turnlim))
        (progn
          (setq c (caar tail))
          (setq lastseg (car tail))
          (setq tail (cdr tail))
          (setq cnt 3)
          (setq turnsum (curve:lwpl-turn a b c))
          (setq dir (cond
                      ((> turnsum 0) 1)
                      ((< turnsum 0) -1)
                      (t 0)))
          (setq o (curve:3pt2o a b c))
          (if (and o (equal (distance o a) (distance o b) fuzz))
            (progn
              (setq r (distance o a))
              (while
                (and
                  tail
                  (= 0 (cdar tail))
                  (< (distance c (caar tail)) lengthlim)
                  (progn
                    (setq turn (curve:lwpl-turn b c (caar tail)))
                    (and
                      (<= (abs turn) turnlim)
                      (or
                        (= dir 0)
                        (>= (* dir turn) 0))
                      (equal r (distance o (caar tail)) fuzz))))
                (setq a b)
                (setq b c)
                (setq c (caar tail))
                (setq lastseg (car tail))
                (setq turnsum (+ turnsum turn))
                (setq tail (cdr tail))
                (setq cnt (1+ cnt)))
              (if
                (and
                  (>= cnt 5)
                  (<= (abs turnsum) pi))
                (cons
                  (list
                    (cons
                      first
                      (curve:lwpl-cocircle-bulge first second c o))
                    lastseg)
                  tail)
                 nil)))
          )))
    nil))
