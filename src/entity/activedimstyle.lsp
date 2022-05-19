(defun entity:activedimstyle (dimname / acaddocument acadobject currdimstyle mspace)
  "激活指定的标注样式。dimname:标注样式名"
  ""
  "(activedimstyle \"40\")"
  (vl-load-com)
  (setq entname (tblobjname "DIMSTYLE"
      dimname))
  (setq acadobject (vlax-get-acad-object)
    acaddocument (vla-get-activedocument acadobject)
    mspace (vla-get-modelspace acaddocument))
  (setq currdimstyle (vlax-ename->vla-object entname))
  (vla-put-activedimstyle acaddocument currdimstyle)
  (princ))
