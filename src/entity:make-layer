(defun entity:make-layer (strname intcolor strltype boolecur / iloc obj out)
  "创建图层\n参数:\nstrName:图层名\nintColor:图层颜色\nstrLtype:图层线型\nbooleCur:是否置为当前图层"
  "成功返回图层名，失败返回nil"
  "(entity:make-layer \"Layer1\"
    3 \"DASHED\"
    T)"
  (if (not (tblsearch "layer"
        strname))
    (progn (setq obj (vla-add (std:layers)
          strname))
      (setq iloc (vl-position strname (entity:layers)))
      (if (vlax-write-enabled-p obj)
        (progn (if intcolor (vla-put-color obj intcolor))
          (if strltype (entity:change-ltype obj strltype))))
      (if boolecur (vla-put-activelayer (std:active-document)
          (vla-item (std:layers)
            iloc)))
      strname)
    nil))
