(defun point:in-curve-p (pt curve / pt1 pt2 pt3 cp p3 poly d3 dc )
  "检测一点是否在曲线内部"
  "T or nil"
  (if (p:enamep curve) (setq curve (e2o curve)))
  ;; 求曲线外一点。
  (vla-getboundingbox curve 'pt1 'pt2)
  (setq
   pt1 (vlax-safearray->list pt1) ;曲线外框左下角
   pt2 (vlax-safearray->list pt2) ;曲线外框右上角
   pt3 (mapcar '- pt1 (list 1 1)) ;曲线外一点
   pt (list (car pt) (cadr pt))
   )
  (cond
    ((or (vl-some (function <) pt pt1)
         (vl-some (function >) pt pt2)
         )
     nil  ;点在曲线外
     )
    ((equal pt (setq cp (vlax-curve-getclosestpointto curve pt)) 0.000001) ;检测点到曲线的最近点cp
     (vlax-curve-getparamatpoint curve cp) ;;点在曲线上
     )
    (t
     (setq
      p3 (vlax-curve-getclosestpointto curve pt3) ;曲线外一点到曲线的最近点
      pt3 (mapcar '- pt3 p3) ;p3 pt3向量
      d3 (vlax-curve-getfirstderiv curve (vlax-curve-getparamatpoint curve p3)) ;p3斜率（向量）
      d3 (list (- (cadr p3)) (car p3)) ;p3斜率（向量）旋转90度
      d3 (> (apply '+ (mapcar '* pt3 d3)) 0) ;计算 p3 pt3向量与d3向量方向，大于0同向，小于零反向
      dc (vlax-curve-getfirstderiv curve (vlax-curve-getparamatpoint curve cp)) ;检测点到曲线的最近点cp斜率（向量）
      dc (list (- (cadr dc)) (car dc)) ;检测点到曲线的最近点斜率（向量）旋转90度
      pt (mapcar '- pt cp)  ;cp pt向量
      dc (> (apply '+ (mapcar '* pt dc)) 0) ;计算 cp pt向量与dc向量方向，大于0同向，小于零反向
      )
     (/= dc d3) ;检测结果与曲线外一点相同
     )))
