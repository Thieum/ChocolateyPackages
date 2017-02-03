$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.77/cppcheck-1.77-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.77/cppcheck-1.77-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = '95803829B87BE9D536672A9523A9945BAF438227D463F25CB75EABC8799A21A1'
  checksumType  = 'sha256' 
  checksum64    = '81EDECA05D3D2CF4BDF469B883413015536467CFB8024D17B88639D60282DF63'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

