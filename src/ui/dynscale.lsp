(defun ui:dynscale (ents pt-base / flag r)
  "动态绘图，ents随光标缩放，按左键定位，右键删除"
  ""
  "(ui:dynscale (ssget)(getpoint))"
  (if (= 'ename (type ents))(setq ents (list ents)))
  (if (= 'pickset (type ents))
      (setq ents (pickset:to-list ents)))
  (setq flag t)
  (while flag
    (setq gr (grread t 16))
    (cond
      ((= 3 (car gr))
       "按下鼠标左键"
       ;;绘制并退出
       (setq flag nil)
       )
      ((or (= 25 (car gr))
	   (= 11 (car gr)))
       "按下鼠标右键"
       ;; 删除并退出
       (mapcar 'entdel ents)
       (setq flag nil)
       )
      ((= 5 (car gr))
       "移动鼠标"
       (mapcar (function(lambda(x)
		 (vla-scaleentity (e2o x)
			     (point:to-ax pt-base)
			     (* 0.001 (distance pt-base
						(cadr gr)))
			     )))
	       ents)
       (setq pt-base (cadr gr))
       )
      (t "其它情况"
	 (princ gr)))
    ;; (princ "\n按左键定位，右键删除")
    )
  (princ))
