(defun excel:aci->truecolor (aci)
  "将cad颜色索引转换为真彩色值\n参数:aci:cad颜色索引"
  "真彩色值"
  "(excel:ACI->Truecolor)"
  (excel:eci->truecolor (excel:aci->eci aci)))
