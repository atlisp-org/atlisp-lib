(defun iconv:gb2312-to-quwei (sym-gb2312)
  "将gb2312的机内码转换为区位码"
  "symbol"
  "(iconv:gb2312-to-quwei '0xB0A1)"
  (m:dec2hex
   (- (m:hex2dec sym-gb2312)
      39584)))
   
