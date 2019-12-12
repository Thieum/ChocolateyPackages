$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.89/cppcheck-1.89-x86-Setup.msi'
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.89/cppcheck-1.89-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = 'FB0A81D32381081157528B732607AF81D5210C81C6359F94A95B89EB1F6938AA'
  checksumType  = 'sha256'
  checksum64    = 'F06F858F3FD6BE29698D1A8E6029013DD6380EC3202FDDD6A744BFC04CDD51FD'
  checksumType64= 'sha256'
  silentArgs = '/quiet ADDLOCAL=CppcheckCore,CLI,GUI,Translations,ConfigFiles,PlatformFiles,PythonAddons,CRT'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'

