(defun m:base2dec (strnum int-b / l)
  "进制转换,strnum 字符串表示的数, int-b 进制(2-36)"
  "fixnum"
  "(m:base2dec \"B0A1\" 16)"
  (setq strnum (strcase strnum))
  (if (= 1 (setq l (strlen strnum)))
      (- (ascii strnum)
         (if (< (ascii strnum)
                65)
             48 55))
    (+ (* (float int-b) (m:base2dec (substr strnum 1 (1- l))
				    (float int-b)))
       (m:base2dec (substr strnum l)
                   (float int-b)))))
