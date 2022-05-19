(defun vectra:jscript-eval (func_str /)
  (if (null $p-scriptcontrol)
    (progn (setq $p-scriptcontrol (vlax-create-object "Aec32BitAppServer.AecScriptControl.1"))
      (vl-catch-all-apply (quote vlax-put)
        (list $p-scriptcontrol "language"
          "jscript"))))
  (if (null $p-scriptcontrol)
    nil (vl-catch-all-apply (quote vlax-invoke)
      (list $p-scriptcontrol "eval"
        func_str))))
