(defun color:bookcolor2rgb(bookcolor / bc ci)
  "将配色系统颜色名转为rgb。"
  "list"
  "(color:bookcolor2rgb \"DIC COLOR GUIDE(R)$DIC 4\")"
  (setq bc (string:to-list bookcolor "$"))
  (vla-setcolorbookcolor(setq ci (color:interface)) (car bc)(cadr bc))
  (list (vla-get-red ci)
	(vla-get-green ci)
	(vla-get-blue ci)))
