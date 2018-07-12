$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.84/cppcheck-1.84-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.84/cppcheck-1.84-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = 'D9AABFB6FFB539BEF269A4A688CB890A4D8DAE2E64658C445E1B887ED0E9AA42'
  checksumType  = 'sha256' 
  checksum64    = '558E2E646240FF32C311277E23146812BE9B86308D4E45108A3AD435BA1BE2B6'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'

