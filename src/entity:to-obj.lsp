(defun entity:to-obj (en0)
  "图元类型转为ActiveX对象。简化函数 e2o"
  (vlax-ename->vla-object en0))
