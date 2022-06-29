(defun UndoBegin()
	(vla-StartUndoMark (*DOC*))
)
(defun UndoEnd()
	(vla-EndUndoMark (*DOC*))
)

; 可撤回一步操作，并且不会使视口移动
(defun UNDO1(/ ctr vsize)
	(setq CTR (trans (getvar "VIEWCTR") 1 0))
	(setq Vsize (getvar "VIEWSIZE"))
	(vl-cmdf "UNDO" 1)
	;(COMMAND-SWITCH "ZOOM" "C" CTR Vsize)
	(vla-ZoomCenter (*acad*) (vlax-make-variant(MUSIC-DIE:LIST->VAR (LIST ctr))) Vsize)
)

(defun MUSIC-DIE:LIST->VAR(LISTS / pntlst2)		
	(vlax-safearray-fill
		(vlax-make-safearray
			vlax-vbDouble
			(cons 0 (1- (* 3 (length LISTS))))
		)
		(foreach e LISTS
			(setq PntLst2 (append PntLst2 e))
		)
	)
)
