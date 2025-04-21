(defun system:winget ()
  "早期的win10没有winget,这个函数用于安装winget"
  ;;本地部署
  (vla-sendcommand *DOC* "start ")
  (vla-sendcommand *DOC* "powershell -Command {Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe}")
  (vla-sendcommand *DOC* (chr 13))
  ;;  下载 winget
  (if (null (findfile
	     (@::path-os
	      (strcat
	       (getenv"userprofile")
	       "/AppData/Local/Microsoft/WindowsApps/winget.exe"))))
      (if (null (findfile
		 (@::path-os
		  (strcat (getenv"userprofile")
			  "/Downloads/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle"))))
	  (progn
	    (@::prompt "正在下载 winget安装程序，请稍后再试")
	    (@::cmd"start" "https://aka.ms/getwingetpreview")
	    nil)
	  (progn
	    (@::cmd  "start"
		     (strcat
		      "powershell -Command {Add-AppxPackage -RegisterByFamilyName -MainPackage " (@::path-os(strcat (getenv "userprofile")"\\Downloads\\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle}"))))
	    nil))
      t))
  
