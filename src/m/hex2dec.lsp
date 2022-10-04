(defun m:hex2dec (hex / l)
  "16进制转换为10进制整数,hex 为 0x 开头的符号或字符串。"
  "fixnum"
  "(m:hex2dec '0xb0a1) ;;=> 45217"
  (if (= 'sym (type hex))
      (setq hex (vl-symbol-name hex)))
  (setq hex (vl-string-left-trim "0xX"
				 hex))
  (setq hex (strcase hex))
  (m:base2dec hex 16))
