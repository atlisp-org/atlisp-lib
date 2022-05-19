(defun m:trim (realnum / dimzin1 result)
    "数值后续零清除"
    (setq dimzin1 (getvar "dimzin"))
    (setvar "dimzin"
        8)
    (setq result (vl-catch-all-apply (quote rtos)
            (list realnum 2 8)))
    (setvar "dimzin"
        dimzin1)
    (if (not (vl-catch-all-error-p result))
        result))
