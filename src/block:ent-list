(defun block:ent-list (blkname / blk)
  "返回块内各图元的列表"
  "图元列表"
  "(block:ent-list \"图框\")"
  (if (setq blk (tblobjname "block"
        blkname))
    (progn (setq ent blk)
      (setq entlst nil)
      (while (setq ent (entnext ent))
        (setq entlst (cons ent entlst)))
      (reverse entlst))))
