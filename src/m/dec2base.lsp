(defun m:dec2base (fixnum int-b)
  "10进制转换为指定进制\n fixnum 整数值, int-b 进制(2-36)"
  "string"
  "(m:dec2base 3323 16)"
  (if (< fixnum int-b)
      (chr (+ fixnum (if (< fixnum 10)
                    48 55)))
    (strcat (m:dec2base (/ fixnum int-b)
			 int-b)
            (m:dec2base (rem fixnum int-b)
			 int-b))))
