(defun p:curvep (obj)
  "是否是曲线"
  (if (vlap obj)
    (and (member (vla-get-objectname obj)
        (quote ("AcDbPolyline"
            "AcDbSpline"
            "AcDb3dPolyline"
            "AcDb2dPolyline"
            "AcDbLine"
            "AcDbCircle"
            "AcDbArc"
            "AcDbEllipse"))))
    nil))
