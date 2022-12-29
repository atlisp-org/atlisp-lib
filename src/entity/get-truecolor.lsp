(defun entity:get-truecolor (ent / obj-color)
  "获取图元 RGB 真彩色"
  "lst"
  (if (= 'ename (type ent))
      (setq ent (e2o ent)))
  (if (p:vlap ent)
      (progn
	(setq obj-color (vla-get-truecolor ent))
	(list
	 (vla-get-red obj-color)
	 (vla-get-green obj-color)
	 (vla-get-blue obj-color)))
    '(0 0 0)))
   
