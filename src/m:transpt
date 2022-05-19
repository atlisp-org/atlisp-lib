(defun m:transpt (base usrpt transpt ang)
    "根据已知世界坐标和用户坐标的基准点，计算世界坐标对应的用户坐标"
    (car (geometry:rotatebymatrix (geometry:translatebymatrix (list transpt)
                base usrpt)
            usrpt (- ang))))
