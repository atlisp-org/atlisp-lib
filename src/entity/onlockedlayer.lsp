(defun entity:onlockedlayer (ename / entlst)
  "解锁图元所在的图层"
  (setq entlst (tblsearch "LAYER"
      (cdr (assoc 8 (entget ename)))))
  (= 4 (logand 4 (cdr (assoc 70 entlst)))))
