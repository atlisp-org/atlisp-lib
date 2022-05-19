(defun file:merge (dist lst-files / fp-out fp-in ln)
    "合并多个文件内容到 dist 文件中。"
    (setq fp-out (open dist "w"))
    (foreach file% lst-files (if (findfile file%)
            (progn (setq fp-in (open file% "r"))
                (while (setq ln (read-line fp-in))
                    (write-line ln fp-out))
                (close fp-in))))
    (close fp-out))
