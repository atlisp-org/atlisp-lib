(defun excel:aci->eci (color / tmp)
  "将cad颜色索引转换为excel颜色索引\n参数:Color:cad颜色索引"
  "excel颜色索引"
  "(excel:ACI->ECI 2)"
  (if (setq tmp (vl-remove-if-not (quote (lambda (x)
            (= (cadr x)
              color)))
        *xls-color*))
    (caar tmp)
    0))
