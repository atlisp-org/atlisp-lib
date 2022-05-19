(defun string:bytelength (str)
  "字符串的字节数，用于cad2021版本。"
  "字符串的字节数"
  (+ (length (vl-string->list str))
    (length (vl-remove-if (quote (lambda (m)
            (< m 256)))
        (vl-string->list str)))))
