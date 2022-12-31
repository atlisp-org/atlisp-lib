(defun example:dcl-progressbar2 (/ dcl-fp dcl-tmp valuebar v1 v2 v3)
  "MVCNIS 法: 6 步进行动态 DCL 开发之进度条"
  ""
  ""
  (require (quote dcl:*))
  "1. Model 建立数据模型。"
  (setq value-bar 0.01 v1 0.01 v2 0.01 v3 0.01)
  "2. View 建立显示视图。"
  (dcl:dialog "example")
  (progn (dcl:progressbar "pbar0" "width=30;fixed_width=true;height=1;"  t)
	 (dcl:progressbar "pbar1" "width=30;fixed_width=true;"    t)
	 (dcl:progressbar "pbar2" "width=30;fixed_width=true;"   t)
	 (dcl:progressbar "pbar3" "width=30;fixed_width=true;"   t)
	 (dcl:mtext "mt"    1 30)
	 (dcl:begin-cluster "row"   "")
	 (progn (dcl:button "btn1"   "清零"    "")
		(dcl:button "btn2"   "进度+"   "")
		(dcl:end-cluster)))
  (dcl:dialog-end-ok-cancel)
  "3. Control 创建控制流程"
  (defun chg-bar (step)
    (dcl:set-mtext "mt" "执行第一阶段：")
    (while (and (< v1 1)
		(> v1 0))
      (setq v1 (+ v1 step))
      (if (> v1 1)
          (setq v1 1)
        (if (< v1 0)
            (setq v1 0)))
      (dcl:set-progressbar "pbar1" v1)
      (dcl:set-progressbar "pbar0" (/ (+ v1 v2 v3)  3.0))
      (sleep 0.5))
    (dcl:set-mtext "mt" "执行第二阶段: ")
    (while (and (< v2 1)
		(> v2 0))
      (setq v2 (+ v2 (* 0.2 step)))
      (if (> v2 1)
          (setq v2 1)
        (if (< v2 0)
            (setq v2 0)))
      (dcl:set-progressbar "pbar2" v2)
      (dcl:set-progressbar "pbar0"  (/ (+ v1 v2 v3)
				       3.0))
      (sleep 0.2))
    (dcl:set-mtext "mt" "执行第三阶段: ")
    (while (and (< v3 1)
		(> v3 0))
      (setq v3 (+ v3 (* 0.3 step)))
      (if (> v3 1)
          (setq v3 1)
        (if (< v3 0)
            (setq v3 0)))
      (dcl:set-progressbar "pbar3"   v3)
      (dcl:set-progressbar "pbar0"  (/ (+ v1 v2 v3) 3.0))
      (sleep 0.5))
    (dcl:set-mtext "mt" "执行完毕！！ "))
  (defun cb-btn1 nil (setq v1 0.001 v2 0.001 v3 0.001)
	 (dcl:set-mtext "mt" "准备中 ... ")
	 (mapcar (quote dcl:set-progressbar)
		 (quote ("pbar0" "pbar1" "pbar2" "pbar3"))
		 (quote (0.001 0.001 0.001 0.001))))
  (defun cb-btn2 nil (chg-bar 0.1))
  "4. New 一个新对话框对象。"
  (dcl:new "example")
  "5. Init 初始化对话框"
  (set_tile "title"
	    "dcl-进度条示例")
  (cb-btn1)
  "6. Show dialog 显示并进行交互"
  (dcl:show)
  (princ))
