(defun system:get-folder (msg / WinShell shFolder path catchit)
  "调用Windows通用目录选取对话框,返回选中路径.
参数: msg-对话框提示字符串"
  
  (vl-load-com)
  (setq winshell (vlax-create-object "Shell.Application"))
  (setq shFolder (vlax-invoke-method WinShell 'BrowseForFolder 0 msg 1))
  (setq
   catchit (vl-catch-all-apply
            '(lambda ()
               (setq shFolder (vlax-get-property shFolder 'self))
               (setq path (vlax-get-property shFolder 'path))
               )
            )
   )
  (if (vl-catch-all-error-p catchit)
      nil
    path
    )
  )
