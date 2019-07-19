$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.88/cppcheck-1.88-x86-Setup.msi'
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.88/cppcheck-1.88-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = 'DAE67046D65296DBC8A21A338CEC387C133B801ED73A80F1CE10AEAE8EB99D74'
  checksumType  = 'sha256'
  checksum64    = 'E391FA56D195B333B4061A309178F09A059C5C4D895805F9B17B65AA0E21F7EC'
  checksumType64= 'sha256'
  silentArgs = '/quiet ADDLOCAL=CppcheckCore,CLI,GUI,Translations,ConfigFiles,PlatformFiles,PythonAddons,CRT'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'

