(defun env:set-cross-color (/ col display)
    (vla-put-modelcrosshaircolor display (vlax-make-variant (+ col (* col 256)
                (* col 65536))
            vlax-vblong)))
