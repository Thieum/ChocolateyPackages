$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.75/cppcheck-1.75-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.75/cppcheck-1.75-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = 'A472D7871DD46CA660F54607199E466D5B831EA65255A749C0CBCE75100485DF'
  checksumType  = 'sha256' 
  checksum64    = 'C38A9FA53942825F8D919C6E8732E4424752EA793F679B5B759ADC6B6C3681E2'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

