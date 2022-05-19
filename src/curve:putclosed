(defun curve:putclosed (obj)
  "使多段线封闭"
  "无"
  "(curve:putClosed (car (entsel)))"
  (or (p:vlap obj)
    (setq obj (vlax-ename->vla-object obj)))
  (if (not (vlax-curve-isclosed obj))
    (vla-put-closed obj :vlax-true)))
