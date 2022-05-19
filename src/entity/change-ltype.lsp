(defun entity:change-ltype (obj strltype / entlist)
  "改变对象线型\n参数:\nobj:对象\nstrLtype:线型"
  "成功返回T，失败返回nil"
  "(entity:change-Ltype cirobj \"DASHED\")"
  (cond ((entity:ltype-exists strltype)
      (cond ((and (vlax-read-enabled-p obj)
            (vlax-write-enabled-p obj))
          (vla-put-linetype obj strltype)
          t)
        (t nil)))
    (t nil)))
