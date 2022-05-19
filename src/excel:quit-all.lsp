(defun excel:quit-all (saveyn / exlobj)
  "退出所有打开的excel文件\n参数:SaveYN:是否保存"
  (while (setq exlobj (vlax-get-object "Excel.Application"))
    (excel:quit exlobj saveyn)))
