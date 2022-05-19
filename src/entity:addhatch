(defun entity:addhatch (outarray inarray name / hatchobj)
  "创建填充。outArray:外边界对象表，inArray:内边界对象表，name:充填名称"
  "填充体对象"
  (setq hatchobj (vla-addhatch (std:model-space)
      achatchpatterntypepredefined name :vlax-true))
  (vla-appendouterloop hatchobj (vla:objarray (mapcar (quote vlax-ename->vla-object)
        outarray)))
  (if inarray (vla-appendinnerloop hatchobj (vla:objarray (mapcar (quote vlax-ename->vla-object)
          inarray))))
  (vla-put-patternscale hatchobj 40)
  hatchobj)
