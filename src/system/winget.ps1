if (-not ( Get-Command winget -errorAction SilentlyContinue)) {
    Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
}

if (-not ( Get-Command winget -errorAction SilentlyContinue)) {
    Invoke-WebRequest http://s3.atlisp.cn/download/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
    Add-AppxPackage -RegisterByFamilyName -MainPackage .\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle
}
