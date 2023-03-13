(defun block:set-attributes (blk lst / n atts)
  "设置块属性值，blk 为块参照的图元名，lst 为多个属性名和属性值组成的点对表。"
  ""
  "(block:set-attributes blk '((\"att1\" . \"value1\")(\"att2\" . \"value2\")))"
  (if (= (quote ename)
      (type blk))
    (if (safearray-value (setq atts (vlax-variant-value (vla-getattributes (vlax-ename->vla-object blk)))))
      (progn (foreach n lst (mapcar (quote (lambda (x)
                (if (= (strcase (car n))
                    (strcase (vla-get-tagstring x)))
                  (vla-put-textstring x (cdr n)))))
            (vlax-safearray->list atts)))
        (vla-update (vlax-ename->vla-object blk))))
    nil))
