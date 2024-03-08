(defun p:matrixp (mat)
  "测试一组列表是否为矩阵"
  "T or nil"
  (and
   (apply 'and (mapcar 'listp mat))
   (apply '= (mapcar 'length mat))))
