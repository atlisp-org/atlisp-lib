(defun string:regexp-search (string express key / regex s pos len str l)
  "正则表达式搜索字串. Express = 正则表达式 key = 字母 i I m M g G的组合字串"
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
  (setq s (vlax-invoke-method regex (quote execute)
      string))
  (vlax-for o s (setq pos (vlax-get-property o "FirstIndex")
      len (vlax-get-property o "Length")
      str (vlax-get-property o "value"))
    (setq l (cons (list pos len str)
        l)))
  (vlax-release-object regex)
  (reverse l))
