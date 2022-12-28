(defun tbl:list (tbl-name / tbl) 
  "列 DXF表格tbl中的项目的名称。
表格为:block,dimstyle,layer,linetype,textstyle,ucs,view,vport.
也支持另类的layout，layout 本质是属性 block中的匿名块 *Space# 系列
其还有类似 tbl 的如 Materials, tablestyles,mleaderstyle,groups,dictionaries."
  "lst"
  "(tbl:list \"layout\") ; => (\"Model\" \"布局1\" \"布局2\")"
  ;; 表格 dxf 与 ActiveX 名称对照表
  (setq tbl nil)
  (vlax-for item  (vlax-get-property *DOC* (tbl:dxf2obj tbl-name))
	    (setq tbl (cons (vla-get-name item)
			    tbl)))
  (reverse tbl))

