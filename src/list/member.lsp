(defun list:member (ele lst fuzz )
  "支持浮点数的member"
  (cond
   ((list:equal ele (car lst) fuzz)
    lst)
   (t (list:member ele (cdr lst) fuzz))))
