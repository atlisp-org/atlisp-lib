(defun example:dcl-progressbar (/ dcl-fp dcl-tmp valuebar)
  "MVCNIS 法示例6: 6 步进行动态 DCL 开发之进度条"
  ""
  ""
  (require (quote dcl:*))
  "1. Model 建立数据模型。"
  (setq value-bar 0.3)
  "2. View 建立显示视图。"
  (dcl:dialog "example")
  (progn (dcl:progressbar "pbar1"
      "width=30;fixed_width=true;"
      t)
    (dcl:begin-cluster "row"
      "")
    (progn (dcl:button "btn1"
        "进度-"
        "")
      (dcl:button "btn2"
        "进度+"
        "")
      (dcl:end-cluster)))
  (dcl:dialog-end-ok-cancel)
  "3. Control 创建控制流程"
  (defun chg-bar (step)
    (setq value-bar (+ value-bar step))
    (if (> value-bar 1)
      (setq value-bar 1)
      (if (< value-bar 0)
        (setq value-bar 0)))
    value-bar)
  (defun cb-btn1 nil (dcl:set-progressbar "pbar1"
      (chg-bar -0.1)))
  (defun cb-btn2 nil (dcl:set-progressbar "pbar1"
      (chg-bar 0.1)))
  "4. New 一个新对话框对象。"
  (dcl:new "example")
  "5. Init 初始化对话框"
  (set_tile "title"
    "dcl-进度条示例")
  (dcl:set-progressbar "pbar1"
    value-bar)
  "6. Show dialog 显示并进行交互"
  (dcl:show)
  (princ))
