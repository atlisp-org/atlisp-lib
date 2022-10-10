(defun group:make (lst name / groupobj)
    "实体集编组\nlst 图元列表，name 编组名,(匿名组首字为*)."
    (setq groupobj (vla-add (vla-get-groups (vla-get-activedocument (vlax-get-acad-object)))
            name))
    (vla-appenditems groupobj (vla:list->array lst 9)))
