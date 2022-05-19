(defun string:regexp-replace (string newstr express key / regex s)
  "正则表达式替换字串"
  (setq regex (vlax-create-object "Vbscript.RegExp"))
  (if (and key (wcmatch key "*g*,*G*"))
    (vlax-put-property regex "Global"
      1)
    (vlax-put-property regex "Global"
      0))
  (if (and key (wcmatch key "*i*,*I*"))
    (vlax-put-property regex "IgnoreCase"
      1)
    (vlax-put-property regex "IgnoreCase"
      0))
  (if (and key (wcmatch key "*m*,*M*"))
    (vlax-put-property regex "Multiline"
      1)
    (vlax-put-property regex "Multiline"
      0))
  (vlax-put-property regex "Pattern"
    express)
  (setq s (vlax-invoke-method regex (quote replace)
      string newstr))
  (vlax-release-object regex)
  s)
