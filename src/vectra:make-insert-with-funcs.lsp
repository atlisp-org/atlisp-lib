(defun vectra:make-insert-with-funcs (name point funcname params /)
  (setq name (vectra:make-block name funcname params))
  (vectra:make-insert name point 1.0 1.0 1.0 0.0))
