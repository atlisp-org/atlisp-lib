(defun excel:eci->truecolor (color / tmp)
  "将excel颜色索引转换为真彩色值\n参数:Color:excel颜色索引"
  "真彩色值"
  "(excel:ECI->Truecolor 6)"
  (cond ((setq tmp (assoc color *xls-color*))
      (caddr tmp))
    (t 16711935)))
