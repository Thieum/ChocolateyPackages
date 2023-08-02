$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://github.com/danmar/cppcheck/releases/download/2.11/cppcheck-2.11-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum64    = '55BCE7A8911CCDA48D631204D95C9DC6606A590F161E45593452FEFE750B39C7'
  checksumType64= 'sha256'
  silentArgs    = '/quiet ADDLOCAL=CppcheckCore,CLI,GUI,Translations,ConfigFiles,PlatformFiles,PythonAddons,CRT /norestart'
  validExitCodes = @(
            0, # success
            3010 # success, restart required
        )
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'
