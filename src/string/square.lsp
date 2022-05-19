(defun string:square (int str)
  "字符串自乘"
  (if (zerop int)
    str (strcat str (string:square (1- int)
        str))))
