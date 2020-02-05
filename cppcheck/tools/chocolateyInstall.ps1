$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.90/cppcheck-1.90-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum64    = '04C694C8A751ACFD04FBEE80125DB722BF50BA2D79A982540DA69DAF196A6A1A'
  checksumType64= 'sha256'
  silentArgs    = '/quiet ADDLOCAL=CppcheckCore,CLI,GUI,Translations,ConfigFiles,PlatformFiles,PythonAddons,CRT'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'
