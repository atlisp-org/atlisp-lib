(defun entity:make-mleaderstyle (name scale)
  "开发中。创建多重引线样式，name 样式名，scale 比例"
  "ename"
  ""
  (entmakex
   (list '(0 . "MLEADERSTYLE")
      '(100 . "AcDbMLeaderStyle")
      '(179 . 2) '(170 . 2) '(171 . 1) '(172 . 0) '(90 . 2) '(40 . 0.0) '(41 . 0.0) '(173 . 1) '(91 . -1056964608)
      ;;'(340 . <图元名: 210d8e92140>)
      '(92 . -2) '(290 . 1) '(42 . 0.09) '(291 . 1) '(43 . 0.36)
      (cons 3  name)
      '(44 . 1.8) '(300 . "")
      '(174 . 6) '(178 . 6) '(175 . 1) '(176 . 0) '(93 . -1056964608) '(45 . 2.5) '(292 . 0) '(297 . 0) '(46 . 0.18)
      '(94 . -1056964608) '(47 . 1.0) '(49 . 1.0) '(140 . 1.0) '(293 . 1) '(141 . 0.0) '(294 . 1) '(177 . 0)
      (cons 142 scale)
      '(295 . 1) '(296 . 0) '(143 . 1.3) '(271 . 0) '(272 . 9) '(273 . 9) '(298 . 1))
   ))
