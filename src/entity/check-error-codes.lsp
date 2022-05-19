(defun entity:check-error-codes (doc)
  "消除字体乱码，利用gbenor.shx gbcbig.shx\n参数:\ndoc:当前活动文档"
  "无"
  "(entity:Check-Error-Codes *DOC*)"
  (vlax-for txtstyle (vla-get-textstyles doc)
    (if (findfile (vla-get-fontfile txtstyle))
      nil (vla-put-fontfile txtstyle "tssdeng.shx"))
    (if (findfile (vla-get-bigfontfile txtstyle))
      nil (vla-put-bigfontfile txtstyle "tssdchn.shx")))
  (princ))
