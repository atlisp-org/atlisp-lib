(defun entity:boundary (ent / pt boundary vis)
  "创建图元所在的围区的边界多段线."
  "边界图元或nil"
  (setq vis (vla-get-visible (e2o ent)))
  (setq pt (apply 'point:mid (entity:getbox ent 0)))
  (vla-put-visible (e2o ent) :vlax-false)
  (setq boundary (bpoly pt))
  (vla-put-visible (e2o ent) vis)
  boundary)
