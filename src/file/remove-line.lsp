(defun file:remove-lines (file lines / tmpfp)
  "删除文件 file 中 某几行的内容，或内容为 lines 的行"
  (if (atom lines)
      (setq lines (list lines)))
  (if (findfile file)
      (progn
	(setq fp (open file "r"))
	(setq tmpfp (open (setq tmpfile (vl-filename-mktemp)) "w"))
	(setq n 0)
	(while (setq content (read-line fp))
	  (setq n (1+ n))
	  (if (not
	       (or (member n lines)
		   (member content lines)))
	      (write-line content tmpfp)))
	(close fp)
	(close tmpfp)
	(vl-file-delete file)
	(vl-file-rename tmpfile
			file))
    (princ "Not found file"))
  (princ))
