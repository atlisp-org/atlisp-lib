(defun tbl:dxf2obj (tbl-name)
  "将 tbl 名称转化为 ActiveX 对象 Document 的属性名(指向对象集的)."
  "symbol"
  "(tbl:dxf2obj \"layer\")"
  (read
   (cond
    ((string-equal tbl-name "APPID") "RegisteredApplications")
    ((string-equal tbl-name "LTYPE") "linetypes")
    ((string-equal tbl-name "STYLE") "textstyles")
    ((string-equal tbl-name "UCS") "UserCoordinateSystems")
    ((string-equal tbl-name "VPORT") "Viewports")
    (t (strcat tbl-name "s")))))
