﻿;; @param blk 块图元
(defun block:get-effectivename (blk / tem blkname *error*)
  "取得块真实名称，支持 MAC"
  (defun *error* (msg)
    (princ "图块定义异常")
    "")
  (cond ((and (= (quote ename)
								(type blk))
					 (entget blk))
					(progn (setq blkname (cdr (assoc 2 (entget blk))))
						(if (wcmatch blkname "`**")
							(if (and (setq tem (cdadr (assoc -3 (entget (cdr (assoc 330 (entget (tblobjname "block"
																																										blkname))))
																										(quote ("AcDbBlockRepBTag"))))))
										(setq tem (handent (cdr (assoc 1005 tem)))))
								(setq blkname (cdr (assoc 2 (entget tem))))))
						blkname))
    ((= (quote vla-object)
			 (type blk))
      (vla-get-effectivename blk))
    (t "")))
(block:get