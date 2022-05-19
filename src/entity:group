(defun entity:group (lst name / groupobj)
  "将实体集编组"
  (setq groupobj (vla-add (vla-get-groups (vla-get-activedocument (vlax-get-acad-object)))
      name))
  (vla-appenditems groupobj (vla:list->array lst 9)))
