(defun entity:set-visible (ent bool)
  "设置图元的可见性"
  ""
  (if bool
      (vla-put-visible (e2o ent) :vlax-true)
      (vla-put-visible (e2o ent) :vlax-false)))
