(defun vectra:startundomark nil (if (not $p-undo-started)
    (progn (vla-startundomark (vla-get-activedocument (vlax-get-acad-object)))
      (setq $p-undo-started t))))
