(defun point:to-ax (pt)
  "将点坐标转为ActiveX对象"
  (apply  'vlax-3d-point pt))
