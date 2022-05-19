(defun list:get-front-nth (n lst)
    "返回前 n 个元素"
    (if (= n 0)
        nil (cons (car lst)
            (list:get-front-nth (1- n)
                (cdr lst)))))
