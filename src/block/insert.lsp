(defun block:insert (blkname path pt ang scale)
  "插入块参照，\nblkname 块名，\npath 块文件路径(以/结尾,不含块文件名)， \npt 插入点, \nang 旋转角度，\nscale 比例。"
  "块实体"
  "(block:insert \"aa\"
    \"C:/design/\"
    (getpoint)
    0 1)"
  (if (tblsearch "block"
      blkname)
    (entmakex (list (quote (0 . "INSERT"))
        (quote (100 . "AcDbEntity"))
        (quote (100 . "AcDbBlockReference"))
        (cons 2 blkname)
        (cons 10 pt)
        (cons 41 scale)
        (cons 42 scale)
        (cons 43 scale)
        (cons 50 ang)))
    (progn (setvar "attreq" 0)
      (command "-insert"
        (strcat path blkname)
        pt scale scale (angtos ang 0 0))
      (setvar "attreq"
        1)))
  (entlast))
