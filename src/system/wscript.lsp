(defun system:wscript (wscode  / wsh txt)
  "调用WScript 脚本，并返回输出字符串"
  (setq wsh (vlax-create-object "wscript.shell"))
  ;;(vlax-invoke wsh 'run wscode 0 1);;后台运行
  (setq txt (vlax-invoke (vlax-get (vlax-invoke wsh 'exec wscode)) 'stdout) 'readall)
  (vlax-release-object wsh)
  txt
  )
