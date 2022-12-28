(defun tbl:rename (tbl-name old-name new-name) 
  "重命名DXF表格tbl中的项目的名称。 表格为:appid,block,dimstyle,layer,ltype,style,ucs,view,vport.
注意 layout 不属于 tbl 的内容，但属性对象集合。请使用 layout:rename 函数。
参数:tbl-name tbl表格名, old-name 原名称，new-name 新名称"
  "T 成功，nil 失败"
  "(tbl:rename \"layout\" \"布局1\" \"我的布局\")"
  ;; 表格 dxf 与 ActiveX 名称对照表
  
  (if 
      (and
       (or (string-equal tbl-name "layout")
	   (and (tblsearch tbl-name old-name)
		(not (tblsearch tbl-name new-name))))
       (snvalid new-name))
      (progn 
      (if 
        (vl-catch-all-error-p 
          (vl-catch-all-apply 
            'vla-put-name
            (list 
              (vla-item 
                (vlax-get-property *DOC* (tbl:dxf2obj tbl-name))
                old-name)
              new-name)))
        nil
        T))))
