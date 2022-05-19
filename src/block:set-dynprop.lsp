(defun block:set-dynprop (blk prp val)
  "设置动态块特性值"
  (setq prp (strcase prp))
  (vl-some (quote (lambda (x)
        (if (= prp (strcase (vla-get-propertyname x)))
          (progn (vla-put-value x (vlax-make-variant val (vlax-variant-type (vla-get-value x))))
            (cond (val)
              (t))))))
    (vlax-invoke (vlax-ename->vla-object blk)
      (quote getdynamicblockproperties))))