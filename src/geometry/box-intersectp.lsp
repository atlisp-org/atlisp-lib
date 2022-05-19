(defun geometry:box-intersectp (box1 box2)
  "测试两个盒子是否交叉"
  "T 交叉，nil 不交叉"
  (not (or (< (caadr box1)
        (caar box2))
      (< (cadadr box1)
        (cadar box2))
      (> (caar box1)
        (caadr box2))
      (> (cadar box1)
        (cadadr box2)))))
