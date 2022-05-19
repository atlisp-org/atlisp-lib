(defun m:dec->base (n b)
    "进制转换"
    (if (< n b)
        (chr (+ n (if (< n 10)
                    48 55)))
        (strcat (m:dec->base (/ n b)
                b)
            (m:dec->base (rem n b)
                b))))
