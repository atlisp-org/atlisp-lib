(defun excel:eci->aci (color / tmp)
  "将excel颜色索引转换为cad颜色索引\n参数:Color:excel颜色索引"
  "cad颜色索引"
  "(Excel:ECI->ACI 6)"
  (cond ((setq tmp (assoc color *xls-color*))
      (cadr tmp))
    (t 256)))
