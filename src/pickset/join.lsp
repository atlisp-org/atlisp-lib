(defun pickset:join (ss1 ss2 / i n ename)
  "合并选择集，将第一个选择集中的图元加入到第二个选择集中。"
  "合并后的新选择集"
  (setq i -1)
  (setq n (sslength ss1))
  (while (< (setq i (1+ i))
      n)
    (setq ss2 (ssadd (ssname ss1 i)
        ss2)))
  ss2)
