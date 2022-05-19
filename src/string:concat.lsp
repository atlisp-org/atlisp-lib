(defun string:concat (strlst)
  "连接字符串，连接前进行检测。"
  (cond ((std:stringp strlst)
      strlst)
    ((std:string-listp strlst)
      (apply (quote strcat)
        strlst))
    (t nil)))
