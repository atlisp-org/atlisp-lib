(defun json:decode-json-from-string (str)
  "将json字符串解码成list"
  "list"
  (read (@::post (strcat (@::uri)"/api/decode-json")
  str)))
