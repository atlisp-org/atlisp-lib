(defun example:dcl-mtext2 (/ curr-page total-page dcl-fp dcl-tmp)
  "MVCNIS 方法: 6 步进行动态 DCL 开发。Model-View-Control-New-Init-Show."
  ""
  "(example:dcl-dialog)"
  (require (quote dcl:*))
  "1. Model 建立数据模型。"
  (setq curr-page 0)
  (setq total-page 5)
  "2. View 建立显示视图。"
  (dcl:dialog "example")
  (progn (dcl:begin-cluster "column"
      "")
    (progn (dcl:img "img1"
        20 10)
      (dcl:mtext "mtext"
        5 90)
      (dcl:begin-cluster "row"
        "")
      (progn (dcl:button "btn1"
          "Button1"
          "")
        (dcl:button "btn2"
          "Button2"
          "")
        (dcl:end-cluster))
      (dcl:end-cluster)))
  (dcl:dialog-end-ok-cancel)
  "3. Control 创建控制流程"
  (defun cb-flush-page nil (set_tile "num"
      (strcat "\n         当前页面: "
        (itoa (1+ curr-page)))))
  (defun cb-btn1 nil (dcl:set-mtext "mtext"
      "说明：字符串转字byte or word 整数值列表。n当小于128时，单字节，当两个连续的大于128时，双字节值。用于转换非英文字串时防止重码。n当AutoCAD2021且lispsys=1时，返回 unicode 码。说明：自动分段，按数字-字母-汉字自动断开字符串为字符串列表。不支持科学计数法的数字。说明：字符串转字byte or word 整数值列表。n当小于128时，单字节，当两个连续的大于128时，双字节值。用于转换非英文字串时防止重码。n当AutoCAD2021且lispsys=1时，返回 unicode 码。说明：自动分段，按数字-字母-汉字自动断开字符串为字符串列表。不支持科学计数法的数字。"))
  (defun cb-btn2 nil (dcl:set-mtext "mtext"
      "The button's label specifies text that appears inside the button. Buttons are appropriate for actions that are immediately visible to the user such as leaving the dialog box, or going into a subdialog box."))
  "4. New 一个新对话框对象。"
  (dcl:new "example")
  "5. Init 初始化对话框"
  (set_tile "title"
    "Example 标题")
  (cb-flush-page)
  (dcl:set-mtext "mtext"
    "动态多行文本。")
  (dcl:show)
  (princ))
