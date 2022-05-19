(defun vectra:get-block (name /)
  (vl-catch-all-apply (quote vla-item)
    (list (vla-get-blocks (vla-get-activedocument (vlax-get-acad-object)))
      name)))
