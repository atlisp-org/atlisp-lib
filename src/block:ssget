(defun block:ssget (blknames lst-attr / ss ss-res)
  "选择满足指定属性标记及对应值的块\n参数: blknames 块名，或块名列表\n参数: lst-attr 属性名与值的点对表"
  "满足条件的选择集"
  "(block:ssget '(\"块1\"
      \"块2\")
    '((\"属性1\"
        . \"值1\")(\"属性2\"
        . \"值2\")))"
  (if (= (quote str)
      (type blknames))
    (setq blknames (list blknames)))
  (setq ss-res (ssadd))
  (if (setq lst-ent (pickset:to-list (ssget "x"
          (quote ((0 . "insert"))))))
    (foreach ent% lst-ent (if (and (member (block:get-effectivename ent%)
            blknames)
          (apply (quote and)
            (mapcar (quote (lambda (x)
                  (member x (block:get-attributes ent%))))
              lst-attr)))
        (ssadd ent% ss-res))))
  (sssetfirst nil ss-res)
  ss-res)
