(defun datetime:rfc1123-to-lisp (str)
  "将RFC1123格式转化为 autolisp 表格式"
  "list"
  "(datetime:rfc1123-to-lisp \"Mon, 12 Sep 2022 03:58:42 GMT\")"
  (setq mon '("Jan" "Feb" "Mar""Apr""May""Jun""Jul""Aug""Sep""Oct""Nov""Dec"))
  (setq week (mapcar (function(lambda(x)(substr x 1 3)))'("Monday" "Tuesday" "Wednesday" "Thurday" "Friday" "Saturday" "Sunday")))
  (setq res (string:parse-by-lst str '(" " ":")))
  (list
   (atoi (nth 3 res))
   (1+ (vl-position (nth 2 res) mon))
   (1+ (vl-position (substr (nth 0 res) 1 3) week))
   (atoi (nth 1 res))
   (atoi (nth 4 res))
   (atoi (nth 5 res))
   (atoi (nth 6 res))
   0))
