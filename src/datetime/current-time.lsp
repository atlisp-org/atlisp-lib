(defun-q datetime:current-time (str-fmt)
  "格式化日期时间，yyyy 年 mo 月 dd 日 hh 时 mm 分 ss 秒"
  "日期时间字符串"
  "(datetime:current-time \"yyyy-mo-dd hh:mm:ss\")"
    (menucmd (strcat "M=$(edtime,$(getvar,date),"
          str-fmt ")")))
