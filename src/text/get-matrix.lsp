(defun text:get-matrix (/ ss-txt result lst-tmp row)
  "从dwg图中框取文本，形成二维列表数据"
  "由字符串组成的二维列表"
  ""
  ;; 框选 TEXT 和 MTEXT 实体
  (setq ss-txt (pickset:to-list (ssget (quote ((0 . "text,mtext"))))))
  ;; 按位置排序：先按 Y 坐标降序（上方先取），Y 相同则按 X 坐标升序
  (setq ss-txt
	(pickset:sort-by-box ss-txt "Yx" '(200 200)))
  (setq result (quote nil))
  ;; 按Y 坐标分组
  (setq ss-txt (list:group-by
		ss-txt
		'(lambda(x y)
		   (equal
		    (cadr (point:centroid (entity:getbox x 0)))
		    (cadr (point:centroid (entity:getbox y 0)))
		    200
		    ))))
  ;;(print (setq ss ss-txt))
  ;; 提取除首行外的所有行
  (setq lst-tmp (cdr ss-txt))
  ;; 以第一行初始化结果（作为基准）
  (setq result (list (car ss-txt)))
  ;; 第一行的个数作为目标列数
  (setq target-col (length (car ss-txt)))
  (print (strcat "列数:"(itoa target-col)))
  ;; 遍历剩余行，对齐列数
  (foreach
   row lst-tmp
   ;; 列数已等于目标，直接加入
   (if (= (length row) target-col)
       (setq result (append result (list row)))
     ;; 否则按 X 坐标对齐，缺失位置填空字符串
     (progn
       (setq i 0);;第一行的元素次序
       (setq j 0);;要加入的元素次序
       (setq row-tmp (quote nil))
       (repeat
	target-col
        (if (< j (length row))
            ;; 判断 X 坐标是否在同一列（容差 2.0 倍高度）
            (if (equal (car (point:centroid (entity:getbox (nth j row) 0)))
                       (car (point:centroid (entity:getbox (nth i (car result)) 0)))
                       200)
		;; 同一列，加入原元素
		(progn
                  (setq row-tmp (append row-tmp (list (nth j row))))
                  (setq i (1+ i))
                  (setq j (1+ i)))
              ;; 不同列，插入空位
              (progn
                (setq row-tmp (append row-tmp (list "")))
                (setq i (1+ i))))
          ;; 当前行元素已取完，后续填空位
          (progn
            (setq row-tmp (append row-tmp (list "")))
            (setq i (1+ i))))
	)
       (setq result (append result (list row-tmp))))))
  ;; 将实体名转换为字符串内容，返回二维列表
  (mapcar (quote (lambda (x)
		   (mapcar (quote (lambda (y)
				    (if (= (quote ename)
					   (type y))
					(text:remove-fmt
					 (text:get-mtext y ))
				      y)))
			   x)))
	  result)
  )
