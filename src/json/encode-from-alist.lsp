(defun json:encode-from-alist (lst / lst2array )
  "将关联列表转化为json串,测试版"
  "list"
  (defun lst2array (lst)
    (strcat "["
	    (string:from-list
	     (mapcar '@:to-string lst)
	     ",")
	    "]"))
  (cond
   ((and (listp lst)
	 (not (null lst)))
    (cond
     ((null (vl-list-length lst))
      (strcat "{\"" (@:to-string (car lst))"\" : \""
	      (@:to-string (cdr lst)) "\"}")
      )
     ((and (apply 'and (mapcar 'listp lst))
	   (apply 'and (mapcar '(lambda(x)(and (= 1 (length x))(atom (car x))))
			       lst)))
      (lst2array (mapcar 'car lst)))
     ((= 1 (length lst))
      (if (listp (car lst))
	  (json:encode-from-alist (car lst))
	(@:to-string (car lst))))
     ((and (>= (length lst) 2)
	   (apply 'and (mapcar 'atom lst)))
      (strcat "{\"" (@:to-string (car lst))"\" :"
	      (lst2array(cdr lst))"}"
	      ))
     (t
      (strcat "{"
	      (string:from-list
	       (mapcar 'json:encode-from-alist lst)
	       ",") "}"))
     ))
   ((atom lst)
    (strcat " " (@:to-string lst)" ")
    )))
