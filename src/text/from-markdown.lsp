(defun text:from-markdown (str / lst-str str-tmp)
  "将 markdown 格式的文本转化为mtext格式"
  "String"
  (setq lst-str (string:to-list str "\n"))
  (defun handle-strong (str / tmp i res)
    (setq tmp (string:to-list str "**"))
    (setq i 0)
    (foreach
     unit% tmp
     (if (= 1 (rem i 2))
	 (setq res
	       (cons (strcat "{\\fSimHei|b0|i0|c134|p49;"unit%"}")
		     res))
	 (setq res (cons unit% res)))
     (setq i (1+ i))
     )
    (string:from-lst (reverse res) ""))

  (defun handle-header (str )
    (cond
      ((= "* "(substr str 1 2))
       (strcat "\\C2;· \\C3;" (substr str 3)))
      ((= "** "(substr str 1 3))
       (strcat "\\C2;·· \\C3;" (substr str 4)))
      ((= "*** "(substr str 1 4))
       (strcat "\\C2;··· \\C3;" (substr str 5)))
      ((= "**** "(substr str 1 5))
       (strcat "\\C2;···· \\C3;" (substr str 6)))
      (t str)))


  (setq lst-str (mapcar 'handle-header lst-str))
  (setq lst-str (mapcar 'handle-strong lst-str))
  (string:from-list lst-str "\\P"))
	 
