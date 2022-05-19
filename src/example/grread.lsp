(defun example:grread (/ flag r)
  "grread 编程示例，当按下键盘时，弹窗提示按的什么键，否则显示光标的坐标"
  (setq r 100.0)
  (setq flag t)
  (while flag (setq gr (grread t 16))
    "处理输入"
    (cond ((= 2 (car gr))
        "按下了键盘按键"
        (cond ((= "x"
              (chr (cadr gr)))
            (alert (strcat "按下了"
                (chr (cadr gr))))
            "设置条件退出循环"
            (setq flag nil))
          ((= "S"
              (strcase (chr (cadr gr))))
            "以下进行 按了 S的后处理程序"
            (setq r (cdr (assoc "半径"
                  (ui:input "设置"
                    (list (list "半径"
                        r)))))))
          ((= "C"
              (strcase (chr (cadr gr))))
            "以下进行 按了 C 的后处理程序-画圆"
            (entity:make-circle (cadr (grread t 0))
              r))
          (t (alert (vl-prin1-to-string gr)))))
      ((= 3 (car gr))
        "按下鼠标左键"
        (alert "click left"))
      ((or (= 25 (car gr))
          (= 11 (car gr)))
        "按下鼠标右键"
        (alert "click right"))
      ((= 5 (car gr))
        "移动鼠标"
        (princ "当前光标的坐标: ")
        (princ gr))
      (t "其它情况"
        (princ gr)))
    (princ "\n输入[ 退出x | 设置s | 画圆c ]"))
  (princ))
