(defun entity:make-multileader (pts str / mLeader)
  "创建一个多重引线，"
  "ename"
  ;; Define the leader points
  (setq pts (mapcar 'point:2d->3d pts))
  (setq points (vlax-make-safearray vlax-vbDouble (cons 0  (1- (* 3 (length pts))))))
  (vlax-safearray-fill points (apply 'append pts))
  (setq i 0)
  ;; 设置样式比例
  ;; Add the mleader object to model space
  (setq mLeader (vla-AddMLeader *MS* points i))
  (vla-put-textstring mLeader str)
  (o2e mleader)
  )
;; ((-1 . <图元名: 210e5c99020>)
;;  (0 . "MULTILEADER")
;;  (330 . <图元名: 210d8e921f0>) (5 . "2B2")
;;  (100 . "AcDbEntity")
;;  (67 . 0)
;;  (410 . "Model")
;;  (8 . "0")
;;  (100 . "AcDbMLeader")
;;  (270 . 2)
;;  (300 . "CONTEXT_DATA{")
;;  (40 . 1.0)
;;  (10 24495.6 22940.6 0.0)
;;  (41 . 0.18)
;;  (140 . 0.18)
;;  (145 . 0.09)
;;  (174 . 6)
;;  (175 . 6) (176 . 0) (177 . 0) (290 . 1)
;;  (304 . "X=55\\PY=00\\PH=00")
;;  (11 0.0 0.0 1.0)
;;  (340 . <图元名: 210d8e92110>)
;;  (12 24495.7 22940.8 0.0)
;;  (13 1.0 0.0 0.0)
;;  (42 . 0.0) (43 . 0.0) (44 . 0.0) (45 . 1.0) (170 . 1) (90 . -1073741824) (171 . 1) (172 . 5) (91 . -1073741824) (141 . 0.0) (92 . 0) (291 . 0) (292 . 0) (173 . 0) (293 . 0) (142 . 0.0) (143 . 0.0) (294 . 0) (295 . 0) (296 . 0) (110 24494.6 22939.9 0.0) (111 1.0 0.0 0.0) (112 0.0 1.0 0.0) (297 . 0)
;;  (302 . "LEADER{") (290 . 1) (291 . 1) (10 24495.1 22940.6 0.0) (11 1.0 0.0 0.0) (90 . 0) (40 . 0.523911)
;;  (304 . "LEADER_LINE{") (10 24494.6 22939.9 0.0) (91 . 0) (170 . 1) (92 . -1056964608) (340 . <图元名: 0>) (171 . -2) (40 . 0.0) (341 . <图元名: 0>) (93 . 0) (305 . "}") (271 . 0) (303 . "}")
;;  (272 . 9) (273 . 9) (301 . "}")
;;  (340 . <图元名: 210d8e8f690>)
;;  (90 . 283840) (170 . 1)
;;  (91 . -1056964608)
;;  (341 . <图元名: 210d8e92140>)
;;  (171 . -2) (290 . 1) (291 . 1)
;;  (41 . 0.36) (42 . 0.18) (172 . 2)
;;  (343 . <图元名: 210d8e92110>) (173 . 6) (95 . 6) (174 . 1) (175 . 0) (92 . -1056964608) (292 . 0) (93 . -1056964608) (10 1.0 1.0 1.0) (43 . 0.0) (176 . 0) (293 . 0) (294 . 0) (178 . 0) (179 . 1) (45 . 1.0) (271 . 0) (272 . 9) (273 . 9) (295 . 1))
;   Application (RO) = #<VLA-OBJECT IAcadApplication 00007ff72c7d4e60>
;   ArrowheadBlock = ""
;   ArrowheadSize = 0.18
;   ArrowheadType = 0
;   BlockConnectionType = 0
;   BlockScale = 1.0
;   ContentBlockName = ""
;   ContentBlockType = 6
;   ContentType = 2
;   Document (RO) = #<VLA-OBJECT IAcadDocument 00000210d883c2e8>
;   DogLegged = -1
;   DoglegLength = 0.36
;   EntityTransparency = "ByLayer"
;   Handle (RO) = "2C2"
;   HasExtensionDictionary (RO) = 0
;   Hyperlinks (RO) = #<VLA-OBJECT IAcadHyperlinks 00000210f7b360d8>
;   LandingGap = 0.09
;   Layer = "0"
;   LeaderCount (RO) = 1
;   LeaderLineColor = #<VLA-OBJECT IAcadAcCmColor 00000210f7b35110>
;   LeaderLinetype = "ByBlock"
;   LeaderLineWeight = -2
;   LeaderType = 1
;   Linetype = "ByLayer"
;   LinetypeScale = 1.0
;   Lineweight = -1
;   Material = "ByLayer"
;   ObjectID (RO) = 46
;   ObjectName (RO) = "AcDbMLeader"
;   OwnerID (RO) = 43
;   PlotStyleName = "ByLayer"
;   ScaleFactor = 1.0
;   StyleName = "Standard"
;   TextAttachmentDirection = 0
;   TextBackgroundFill = 0
;   TextBottomAttachmentType = 0
;   TextDirection = 5
;   TextFrameDisplay = 0
;   TextHeight = 0.18
;   TextJustify = 1
;   TextLeftAttachmentType = 1
;   TextLineSpacingDistance = 0.3
;   TextLineSpacingFactor = 1.0
;   TextLineSpacingStyle = 1
;   TextRightAttachmentType = 3
;   TextRotation = 0.0
;   TextString = "ABC\\PDEF"
;   TextStyleName = "Standard"
;   TextTopAttachmentType = 0
;   TextWidth = 0.0
;   TrueColor = #<VLA-OBJECT IAcadAcCmColor 00000210f7b36610>
;   Visible = -1
