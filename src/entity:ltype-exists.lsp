(defun entity:ltype-exists (strltype)
  "线型是否存在?\n参数:\nstrLtype:线型名"
  "成功返回t，失败返回nil"
  "(entity:Ltype-Exists \"continuous\")"
  (and (member (strcase strltype)
      (mapcar (quote strcase)
        (entity:linetypes)))))
