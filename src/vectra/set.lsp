(defun vectra:set (lst values / old)
  (if (and values (atom (car values)))
    (setq values (list values)))
  (foreach value values (if (setq old (assoc (car value)
          lst))
      (setq lst (subst value old lst))
      (setq lst (append lst (list value)))))
  lst)
