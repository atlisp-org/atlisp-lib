(defun music-die:undo1 (/ ctr vsize)
  "可撤回一步操作，并且不会使视口移动"
  ""
  (setq ctr (trans (getvar "VIEWCTR") 1 0))
  (setq vsize (getvar "VIEWSIZE"))
  (vl-cmdf "UNDO" 1)
  (vla-ZoomCenter *acad* (vlax-make-variant(music-die:list-to-var (list ctr))) vsize)
  )
(defun UndoBegin()
	(vla-StartUndoMark (*DOC*))
)
(defun UndoEnd()
	(vla-EndUndoMark (*DOC*))
)
