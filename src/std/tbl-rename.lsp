(defun std:tbl-rename (tbl-name old-name new-name) 
  "重命名DXF表格中的项目的名称。 表格为:block,dimstyle,layer,layout,linetype,textstyle,view,vports. 
  参数:tbl-name tbl表格名, old-name 原名称，new-name 新名称"
  "T 成功，nil 失败"
  ""
  ;; 表格 dxf 与 ActiveX 名称对照表
  (defun tbl-dxf2obj (tbl-name) 
    (cond 
      ((string-equal tbl-name "LTYPE") "linetypes")
      ((string-equal tbl-name "STYLE") "textstyles")
      ((string-equal tbl-name "UCS") "UserCoordinateSystems")
      ((string-equal tbl-name "VPORT") "Viewports")
      (t (strcat tbl-name "s"))))
  (if 
    (and 
      (tblsearch tbl-name old-name)
      (not (tblsearch tbl-name new-name))
      (snvalid new-name))
    (progn 
      (if 
        (vl-catch-all-error-p 
          (vl-catch-all-apply 
            'vla-put-name
            (list 
              (vla-item 
                (vlax-get-property *DOC* (read (strcat (tbl-dxf2obj tbl-name))))
                old-name)
              new-name)))
        nil
        T))))
