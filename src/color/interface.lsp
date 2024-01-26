(defun color:interface ()
  "CAD 颜色接口对象"
  "ActiveX"
  (vlax-create-object (strcat "AutoCAD.AcCmColor." (substr (getvar "ACADVER") 1 2))))
