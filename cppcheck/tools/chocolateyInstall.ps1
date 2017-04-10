$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.78/cppcheck-1.78-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.78/cppcheck-1.78-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = 'ABC347ECE322B86BB879F295C36DBA54C7C06B3DB6596259295CD5C16E6CA1C8'
  checksumType  = 'sha256' 
  checksum64    = '1CCC33EFC0854EA143CF810E2DE95C7D033590EC31A3958BEA70998BCD6ACA1C'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

