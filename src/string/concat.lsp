(defun string:concat (strlst)
  "连接字符串，连接前进行检测。"
(cond ((p:stringp strlst)
       strlst)
  ((p:string-listp strlst)
      (apply (quote strcat)
    strlst))
  (t nil)))
