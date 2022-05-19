(defun vectra:endundomark nil (if $p-undo-started (progn (vla-endundomark (vla-get-activedocument (vlax-get-acad-object)))
      (setq $p-undo-started nil))))
