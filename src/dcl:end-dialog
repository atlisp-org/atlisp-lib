(defun dcl:end-dialog (str-yes-no / para)
  "完成创建 DCL文件 ， 并关闭文件指针。参数 str-Yes-No 字符串用 - 分隔成两部分，前面为accept,后面为 Cancel.如 是-否，愿意-不愿意。"
  ""
  (if (null str-yes-no)
    (setq str-yes-no "Yes-No"))
  (setq para (string:to-list str-yes-no "-"))
  (cond ((= (length para)
        0)
      (setq para (list "是"
          "否")))
    ((= (length para)
        1)
      (setq para (list (car para)
          "否"))))
  (write-line (strcat ":spacer{} : column {\n    : row {\n        fixed_width = true;\n        alignment = centered;\n        : retirement_button {\n            label           = \"
        "
      (car para)
      "
        \";\n            key             = \"accept\";\n            is_default      = true;\n\t}\n        : spacer { width = 2; }\n\t:retirement_button {\n            label           = \""
      (cadr para)
      "\";\n            key             = \"cancel\";\n            is_cancel       = true;\n\t}}}}")
    dcl-fp)
  (close dcl-fp))
