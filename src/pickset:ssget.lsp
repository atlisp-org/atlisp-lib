(defun pickset:ssget (msg params / sel)
  "自定义带提示符的ssget "
  "选择集"
  "(pickset:ssget \"选择对象：\"
    '(\"_WP\"
      pt_list ((0 . \"LINE\")
        (62 . 5))))"
  (princ msg)
  (setvar (quote nomutt)
    1)
  (setq sel (vl-catch-all-apply (quote ssget)
      params))
  (setvar (quote nomutt)
    0)
  (if (not (vl-catch-all-error-p sel))
    sel))
