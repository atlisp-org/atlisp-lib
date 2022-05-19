(defun dcl:scrollbar (key style h-or-v)
  (set (read (strcat "cb-"
        key "scrollbar"))
    (lambda (key)
      "滚动条事件的回调函数"
      (alert (strcat "请定义回调函数 (cb-"
            key "scrollbar)"))))
  (if (eval (read (strcat key "total-page")))
    (write-line (strcat ":slider{action=\"(cb-"
          key "scrollbar \\\""
          key "\\\")\";key=\""
        key "\";layout="
        (if h-or-v "horizontal"
          "vertical")
        ";value="
        (itoa (1- (eval (read (strcat key "total-page")))))
        ";max_value="
        (itoa (1- (eval (read (strcat key "total-page")))))
        ";min_value=0;small_increment=1;}")
      dcl-fp)
    (alert (strcat "请在Model部定义 "
        key "total-page 变量。"))))
