(defun vectra:ss-highlight (ss / en n)
  (if $p-ss-highlighted (progn (vectra:ss-highlight-inner $p-ss-highlighted 4)
      (setq $p-ss-highlighted nil)))
  (if ss (progn (vectra:ss-highlight-inner ss 3)
      (setq $p-ss-highlighted ss))))