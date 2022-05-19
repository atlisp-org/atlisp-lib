(defun entity:offset (obj dis / offsetobj)
  "偏移对象"
  (if (p:enamep obj)
    (setq obj (vlax-ename->vla-object obj)))
  (setq offsetobj (vla-offset obj dis)))
