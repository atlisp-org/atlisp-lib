(defun env:set-bg-color (col / display)
    "设置绘图区背景色"
    "无"
    "(env:set-bg-color 55)"
    (setq display (vla-get-display (vla-get-preferences (vla-get-application (vlax-get-acad-object)))))
    (vla-put-graphicswinlayoutbackgrndcolor display (vlax-make-variant (+ col (* col 256)
                (* col 65536))
            vlax-vblong))
    (princ))
