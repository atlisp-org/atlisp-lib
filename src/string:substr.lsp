(defun string:substr (str start len / res i)
  "截取字符串，ansi 字符按 1 位 计算。start 最小值为 1, len 最小为1 "
  "结果字符串"
  "(string:substr \"a中国人bcd开发lisp\"
    2 3)
  => 中国人"
  (setq start (fix start)
    len (fix len))
  (if (< start 1)
    (setq start 1))
  (if (< len 1)
    (setq len 1))
  (setq res nil)
  (setq i -2)
  (repeat len (setq res (cons (nth (+ (setq i (1+ i))
            start)
          (string:s2l-ansi str))
        res)))
  (string:l2s-ansi (vl-remove nil (reverse res))))
