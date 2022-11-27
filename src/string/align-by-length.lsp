(defun string:align-by-length (str len / flag)
  "将字节长度小于 len 的字符串前后增加空格，使其长度等于 len。可用于DCL中的字符对齐。"
  "String"
  "(string:align-by-length \"abc\" 8) => \"   abc  \""
  (if (null str)(setq str ""))
  (setq flag nil)
  (while (< (string:bytelength str) len)
    (if flag
	  (setq str (strcat " " str))
      (setq str (strcat str " ")))
    (setq flag (not flag)))
  str)
