(defun vectra:getint (msg init default / r)
  "从命令行获取整数。"
  "int"
  ""
  (if init (initget init))
  (if (null (setq r (getint (strcat msg "<"
            (itoa default)
            ">"))))
    default r))
