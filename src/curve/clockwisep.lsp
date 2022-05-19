(defun curve:clockwisep (ent / fx offsetobj plineobj)
  "判断多段线方向"
  "顺时针返回t，反之nil"
  "(curve:clockwisep (car(entsel)))"
  (setq plineobj (vlax-ename->vla-object ent))
  (setq offsetplineobj (car (vlax-safearray->list (vlax-variant-value (vla-offset plineobj 0.0001)))))
  (if (> (vlax-curve-getdistatparam plineobj (vlax-curve-getendparam plineobj))
      (vlax-curve-getdistatparam offsetplineobj (vlax-curve-getendparam offsetplineobj)))
    (setq fx t)
    (setq fx nil))
  (vla-delete offsetplineobj)
  fx)
