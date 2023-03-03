(defun example:dcl1 (/ *error* dcl-fp dcl-tmp)
  "MVCNIS 法: 6 步进行动态 DCL 开发示例1。"
  ""
  "(example:dcl-dialog)"
  (require (quote dcl:*))
  "1. Model 建立数据模型。"
  "2. View 建立显示视图。"
  (dcl:dialog "example")
  (progn (dcl:hr 0.08)
    (dcl:button "btn1"
      "按钮1"
      "")
    (dcl:hr 0.08)
    (dcl:button "btn2"
      "按钮2"
      "")
    (dcl:hr 0.08))
  (dcl:dialog-end-ok-cancel)
  "3. Control 创建控制流程"
  (defun cb-btn1 nil (alert "按下了按钮1"))
  (defun cb-btn2 nil (alert "按下了按钮2"))
  "4. New 一个新对话框对象。"
  (dcl:new "example")
  "5. Init 初始化对话框"
  (set_tile "title"
    "dcl示例1")
  "6. Show dialog 显示并进行交互"
  (dcl:show)
  (princ))
