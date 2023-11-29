(defun example:dbx ()
  "用DBX方式删除dwg文件中的图框签名和手写签名块"
  ""
  ""
  "修改以下配置信息==================================="
  (setq framename "图框块名") ;; 你的图框块名
  (setq signs '("签名1" "签名2")) ; 手写签名块的名称
  " =================================================="
  (defun dbx-clean-att (dwg-file / blk-obj blk3)
    "打开外部dwg的DBX对象. 假定文件为 D:/abc.dwg"
    (setq dwg-file (findfile dwg-file))
    (dbx:open dwg-file)
    "取dbx中的模型空间中的实体"
    (setq dbx-ms(vla-get-modelspace *DBX*))
    "取dbx块集中的第4个块定义对象（前几个是model-space paper-space之类的）"
    (setq n 0)
    (repeat (vla-get-count dbx-ms)
	    (setq obj% (vla-item dbx-ms n))
	    (print (vla-get-objectname obj%))
	    (cond
	      ((and (= (vla-get-objectname obj%) "AcDbBlockReference")
		    (= (vla-get-HasAttributes obj%) :vlax-true)
		    (= (vla-get-effectivename obj%) framename)
		  )
	       (block:set-attributes obj% '(("设计" . "")("校对" . ""))))
	      ((and (= (vla-get-objectname obj%) "AcDbBlockReference")
		    (member (vla-get-effectivename obj%)
			    signs
			    ))
	       (vla-delete obj%)
	       ))
	    (setq n (1+ n)))
    (setq tmp-file (strcat dwg-file ".b.dwg"))
    (vla-saveas *DBX* tmp-file)
    (dbx:release)
    (if (and (findfile tmp-file)
	     (>  (vl-file-size tmp-file) 0))
	(progn
	  (vl-file-delete dwg-file)
	  (vl-file-rename tmp-file dwg-file))
	))
  (dbx-clean-att "D:/xxx.dwg"))


	  
