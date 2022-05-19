(defun entity:listcollection (collection / out)
  "列集合"
  (vlax-for each collection (setq out (cons (vla-get-name each)
        out)))
  (reverse out))
