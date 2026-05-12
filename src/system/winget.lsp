(defun system:winget ()
  "早期的win10没有winget,这个函数用于安装winget"
  ;;本地部署
  (setq ps1 (list
"if (-not ( Get-Command winget -errorAction SilentlyContinue)) {"
"    Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe"
"}"
"if (-not ( Get-Command winget -errorAction SilentlyContinue)) {"
"    Invoke-WebRequest http://s3.atlisp.cn/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
"    Add-AppxPackage -RegisterByFamilyName -MainPackage .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"
"}"
  ))
  (setq fp (open (setq file (@::path-os(strcat @::*tmp-path* "get-winget.ps1")))"w"))
  (foreach ln ps1 (write-line ln fp))
  (close fp)
  (or @::enable-start
      (@::check-pgp)
      (@::patch-pgp) 
      )
  (setvar "cmdecho" 0)
  (@::cmd  "powershell"
  (strcat
	    "Get-Content " file " | Invoke-Expression"))
  (setvar "cmdecho" 1)
  t
  )

