(defun example:dcl-subdialog (/ *error* curr-page total-page dcl-fp dcl-tmp cb-flush-page cb-img1 cb-img2 cb-img3)
  "DCL多级对话框示例代码"
  ""
  "(example:dcl-subdialog)"
  (require (quote dcl:*))
  
  (defun sub-dialog (m n / curr-page total-page dcl-fp dcl-tmp cb-flush-page page-init)
    "m n 表示图像的 行 列个数"
    "1. Model 建立数据模型。"
    (setq curr-page 0)
    (setq total-page 3)
    "2. View 建立显示视图。"
    (dcl:dialog "subimgs")
    (progn (dcl:hr 0.08)
	   (write-line ":text{key=\"num\";}"
		       dcl-fp)
	   (dcl:hr 0.08)
	   (setq i 0)
	   (dcl:begin-cluster "column" "")
	   (repeat m
		   (dcl:begin-cluster "row" "")
		   (repeat n
			   (dcl:image-button (strcat "subimg" (itoa (setq i (1+ i))))
					     20 10 nil))
		   (dcl:end-cluster)
		   )
	   (dcl:end-cluster)
	   (dcl:hr 0.08)
	   (dcl:paging t))
    (dcl:dialog-end-ok-cancel)
    "3. Control 创建控制流程"
    (defun cb-flush-page nil (set_tile "num"
				       (strcat "当前页面: "
					       (itoa (1+ curr-page)))))
    "4. New 一个新对话框对象。"
    (dcl:new "subimgs")
    "5. Init 初始化对话框"
    (set_tile "title"
	      "子窗口")
    (paging-init)
    (cb-flush-page)
    "6. Show dialog 显示并进行交互"
    (dcl:show)
    (princ))

  "1. Model 建立数据模型。"
  (setq curr-page 0)
  (setq total-page 5)
  "2. View 建立显示视图。"
  (dcl:dialog "example")
  (progn (dcl:hr 0.08)
	 (write-line ":text{key=\"num\";}"
		     dcl-fp)
	 (dcl:hr 0.08)
	 (setq i 0)
	 (dcl:begin-cluster "column" "")
	 (repeat 4
		 (dcl:begin-cluster "row" "")
		 (repeat 3
			 (dcl:image-button (strcat "img" (itoa (setq i (1+ i))))
					   30 10 nil))
		 (dcl:end-cluster)
		 )
	 (dcl:end-cluster)
	 (dcl:hr 0.08)
	 (dcl:paging t))
  (dcl:dialog-end-ok-cancel)
  "3. Control 创建控制流程"
  (defun cb-flush-page nil (set_tile "num"
				     (strcat "当前页面: "
					     (itoa (1+ curr-page)))))
  (defun cb-img1 () (sub-dialog 2 2))
  (defun cb-img2 () (sub-dialog 3 3))
  (defun cb-img3 () (sub-dialog 3 1))
  "4. New 一个新对话框对象。"
  (dcl:new "example")
  "5. Init 初始化对话框"
  (set_tile "title" "主窗口")
  (paging-init)
  (cb-flush-page)
  "6. Show dialog 显示并进行交互"
  (dcl:show)
  (princ))
