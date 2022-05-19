(defun m:radions->degress (radions)
    "弧度转角度函数"
    (if (numberp radions)
        (* radions (/ 180.0 pi))))
