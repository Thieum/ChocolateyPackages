$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://github.com/danmar/cppcheck/releases/download/2.7/cppcheck-2.7-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum64    = 'D481563ECCA60D0C2279AC2AE1AA9B35991A284D6CB7D126E64BB84546A3CBA1'
  checksumType64= 'sha256'
  silentArgs    = '/quiet ADDLOCAL=CppcheckCore,CLI,GUI,Translations,ConfigFiles,PlatformFiles,PythonAddons,CRT /norestart'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'
