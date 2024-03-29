(defun entity:make-text (str pt1 fontsize ang kgb qx dqys / y1 y2)
  "生成一个TEXT单行文本.\n参数说明：\nfontsize: 字高\nang: 角度\nkgb: 宽高比\nqx: 倾斜角\ndqys: 对齐方式，L 左 M 中 R 右，T 上 M 中 B 下。\n"
  "return:文字图元名"
  "example:(entity:make-text \"文字\"
    (getpoint)
    3 0 0.8 0 \"LB\")"
  (if (= (quote str)
      (type dqys))
    (setq dqys (strcase dqys)))
  (cond ((or (= dqys 0)
        (= dqys "M"))
      (setq y1 (cons 72 4)
        y2 (cons 73 0)))
    ((or (= dqys 11)
        (= dqys "LT"))
      (setq y1 (cons 72 0)
        y2 (cons 73 3)))
    ((or (= dqys 12)
        (= dqys "LM"))
      (setq y1 (cons 72 0)
        y2 (cons 73 2)))
    ((or (= dqys 13)
        (= dqys "LB"))
      (setq y1 (cons 72 0)
        y2 (cons 73 1)))
    ((or (= dqys 21)
        (= dqys "MT"))
      (setq y1 (cons 72 1)
        y2 (cons 73 3)))
    ((or (= dqys 22)
        (= dqys "MM"))
      (setq y1 (cons 72 1)
        y2 (cons 73 2)))
    ((or (= dqys 23)
        (= dqys "MB"))
      (setq y1 (cons 72 1)
        y2 (cons 73 1)))
    ((or (= dqys 31)
        (= dqys "RT"))
      (setq y1 (cons 72 2)
        y2 (cons 73 3)))
    ((or (= dqys 32)
        (= dqys "RM"))
      (setq y1 (cons 72 2)
        y2 (cons 73 2)))
    ((or (= dqys 33)
        (= dqys "RB"))
      (setq y1 (cons 72 2)
        y2 (cons 73 1)))
    (t (setq y1 (cons 72 0)
        y2 (cons 73 3))))
  (entmakex (list (quote (0 . "TEXT"))
      (cons 10 pt1)
      (cons 1 str)
      (cons 40 fontsize)
      (cons 50 ang)
      (cons 41 kgb)
      (cons 51 qx)
      (quote (71 . 0))
      y1 y2 (cons 11 pt1))))
