(defun g:dot-product (v1 v2)
  "求两个向量的点积、内积、标量积、数量积"
  "number"
  (apply '+ (mapcar '* v1 v2)))
  
