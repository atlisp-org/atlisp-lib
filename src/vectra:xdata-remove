(defun vectra:xdata-remove (ename appid /)
  (cond ((= "*"
        appid)
      (vectra:xdata-set-inner ename (mapcar (quote list)
          (vectra:xdata-keys ename))))
    ((listp appid)
      (vectra:xdata-set-inner ename (mapcar (quote list)
          appid)))
    (t (vectra:xdata-set-inner ename (list (cons appid nil))))))
