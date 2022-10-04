(defun m:dec2hex (fixnum)
  "将十进制整数转换为16进制符号 0XAB的形式"
  "symbol"
  "(m:dec2hex 45217) ;; => 0xB0A1"
  (read (strcat "0x"(m:dec->base fixnum 16))))
