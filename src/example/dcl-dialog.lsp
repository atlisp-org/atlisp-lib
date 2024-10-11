(defun example:dcl-dialog (/ *error* curr-page total-page dcl-fp dcl-tmp)
  "MVCNIS 法示例2: 6 步进行动态 DCL 开发。"
  ""
  "(example:dcl-dialog)"
  (require (quote dcl:*))
  "1. Model 建立数据模型。"
  (setq curr-page 0)
  (setq total-page 5)
  "2. View 建立显示视图。"
  (dcl:dialog "example")
  (progn (dcl:hr 0.08)
    (write-line ":text{key=\"num\";}"
      dcl-fp)
    (dcl:hr 0.08)
    (dcl:cell "cell" 8 8 nil t t nil)
    (dcl:hr 0.08)
    (dcl:paging t))
  (dcl:dialog-end-ok-cancel)
  "3. Control 创建控制流程"
  (defun cb-flush-page nil (set_tile "num"
      (strcat "
         当前页面: "
        (itoa (1+ curr-page)))))
  "4. New 一个新对话框对象。"
  (dcl:new "example")
  "5. Init 初始化对话框"
  (set_tile "title"
    "Example 标题")
  (paging-init)
  (cb-flush-page)
  "6. Show dialog 显示并进行交互"
  (dcl:show)
  (princ))
