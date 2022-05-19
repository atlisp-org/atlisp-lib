(defun geometry:merge-box (box1 box2 / ax1 ax2 ay1 ay2 bx1 bx2 by1 by2)
  "合并两个包围盒，不管两个盒子是否有重叠。"
  "总包围盒"
  (list (list (min (caar box1)
        (caar box2))
      (min (cadar box1)
        (cadar box2)))
    (list (max (caadr box1)
        (caadr box2))
      (max (cadadr box1)
        (cadadr box2)))))
