(defun m:length (start end)
    "两点长度(距离)，等同于两点向量的模"
    (sqrt (apply '+ (mapcar '(lambda (x) (* x x))
            (mapcar '- end start)))))
