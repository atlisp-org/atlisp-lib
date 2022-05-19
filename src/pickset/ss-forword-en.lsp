(defun pickset:ss-forword-en (en / ss)
  "将图元 ent 之后的所有图元形成的选择集"
  "pickset"
  (if en (progn (setq ss (ssadd))
      (while (setq en (entnext en))
        (if (not (member (cdr (assoc 0 (entget en)))
              (quote ("ATTRIB"
                  "VERTEX"
                  "SEQEND"))))
          (ssadd en ss)))
      (if (zerop (sslength ss))
        (setq ss nil))
      ss)
    (ssget "_x")))
