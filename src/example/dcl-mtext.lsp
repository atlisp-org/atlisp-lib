(defun example:dcl-mtext (/ dcl-fp dcl-tmp)
  "MVCNIS 法示例4: 6 步进行动态 DCL 开发之多行文本"
  ""
  "(example:dcl-mtext)"
  (require (quote dcl:*))
  "1. Model 建立数据模型。"
  "2. View 建立显示视图。"
  (dcl:dialog "example")
  (progn (dcl:mtext "mt"
      3 50)
    (dcl:begin-cluster "row"
      "")
    (progn (dcl:button "btn1"
        "按钮1"
        "")
      (dcl:button "btn2"
        "按钮2"
        "")
      (dcl:end-cluster)))
  (dcl:dialog-end-ok-cancel)
  "3. Control 创建控制流程"
  (defun cb-btn1 nil (dcl:set-mtext "mt"
      "按下了按钮1按下了按钮1按下了按钮1按下了按钮1按下了按钮1按下了按钮1按下了按钮1按下了按钮1"))
  (defun cb-btn2 nil (dcl:set-mtext "mt"
      "按下了按钮2按下了按钮2按下了按钮2按下了按钮2按下了按钮2按下了按钮2按下了按钮2按下了按钮2"))
  "4. New 一个新对话框对象。"
  (dcl:new "example")
  "5. Init 初始化对话框"
  (set_tile "title"
    "dcl-多行文本示例")
  (dcl:set-mtext "mt"
    "初始化多行文本内容。初始化多行文本内容。初始化多行文本内容。初始化多行文本内容。初始化多行文本内容。")
  "6. Show dialog 显示并进行交互"
  (dcl:show)
  (princ))
