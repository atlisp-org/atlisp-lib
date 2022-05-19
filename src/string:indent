(defun string:indent (str / curr-ind% res)
  "缩进 lisp 代码"
  (setq curr-ind% 0)
  (setq res (quote nil))
  (setq str (@:string-subst "\"\n"
      "\"
      "
      (@:string-subst ")\n"
      ")
    "
    str)))
(foreach char% (vl-string->list str)
(cond ((= 40 char%)
    (setq curr-ind% (1+ curr-ind%)))
  ((= 41 char%)
    (setq curr-ind% (1- curr-ind%))))
(setq res (cons char% res))
(if (= 10 char%)
  (repeat (* 4 curr-ind%)
    (setq res (cons 32 res)))))
(vl-list->string (reverse res)))
