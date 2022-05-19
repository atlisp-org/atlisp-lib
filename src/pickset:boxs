(defun pickset:boxs (ss / n en lst)
  "求选择集内各图元的包围盒(角点:左下，右上)组成的列表,ss 选择集或图元列表"
  "(box1 box2 box3)"
  "(pickset:boxs (ssget))"
  (require (quote entity:getbox))
  (if (p:picksetp ss)
    (setq ss (pickset:to-list ss)))
  (if (p:ename-listp ss)
    (mapcar (quote (lambda (x)
          (entity:getbox x 0)))
      ss)))
