(defun example:dcl-cell (/ curr-page total-page dcl-fp dcl-tmp)
  "MVCNIS 方法: 6 步进行动态 DCL 开发。表格示例。Model-View-Control-New-Init-Show."
  ""
  ""
  (require (quote dcl:*))
  "1. Model 建立数据模型。"
  (setq lst-cell (quote (("里程L" "高程H" "半径R")
        (0.0 218.0 0.0)
        (315.589 226.02 1000)
        (815.589 261.02 1000)
        (988.596 255.83 1000)
        (1407.44 260.01 1000)
        (1578.32 265.14 1000)
        (1768.39 264.57 1000)
        (2068.39 240.57 1000)
        (2168.39 237.57 1000)
        (2439.11 215.91 1000)
        (2527.98 213.9 10.0)
        (315.589 226.02 1000)
        (815.589 261.02 1000)
        (988.596 255.83 1000)
        (1407.44 260.01 1000)
        (1578.32 265.14 1000)
        (1768.39 264.57 1000)
        (2068.39 240.57 1000)
        (2168.39 237.57 1000)
        (2439.11 215.91 1000)
        (2527.98 213.9 10.0)
        (315.589 226.02 1000)
        (815.589 261.02 1000)
        (988.596 255.83 1000)
        (1407.44 260.01 1000)
        (1578.32 265.14 1000)
        (1768.39 264.57 1000)
        (2068.39 240.57 1000)
        (2168.39 237.57 1000)
        (2439.11 215.91 1000)
        (2527.98 213.9 10.0)
        (315.589 226.02 1000)
        (815.589 261.02 1000)
        (988.596 255.83 1000)
        (1407.44 260.01 1000)
        (1578.32 265.14 1000)
        (1768.39 264.57 1000)
        (2068.39 240.57 1000)
        (2168.39 237.57 1000)
        (2439.11 215.91 1000)
        (2527.98 213.9 10.0))))
  (setq accept-hook nil)
  (setq lst-cellraw lst-cell)
  (setq cell1tmp-data lst-cell)
  (setq cell1curr-page 0)
  "2. View 建立显示视图。"
  (dcl:dialog "example")
  (dcl:cell "cell1"
    9 (length (car cell1tmp-data))
    t t t t)
  (dcl:dialog-end-ok-cancel)
  "3. Control 创建控制流程"
  "4. New"
  (dcl:new "example")
  "5. Init 初始化对话框"
  (set_tile "title"
    "Example 标题")
  (dcl:show-celldata "cell1")
  "6. Show"
  (dcl:show))
