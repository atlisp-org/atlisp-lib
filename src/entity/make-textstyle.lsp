(defun entity:make-textstyle (name / obj)
  "创建文字样式。"
  (setq obj (vla-add (vla-get-textstyles (vla-get-activedocument (vlax-get-acad-object)))
      name))
  (vla-setfont obj "宋体"
    :vlax-false :vlax-false 1 0)
  (vla-put-width obj 0.7)
  (princ))
