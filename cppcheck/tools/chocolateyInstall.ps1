$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.81/cppcheck-1.81-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.81/cppcheck-1.81-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = 'B08AF2627CD4254F664E9D82831F0EFDA3937A61EDC6DDCF3E1B3563DDE93221'
  checksumType  = 'sha256' 
  checksum64    = '0F9E0D8983B9E8AD2BB7941E76E85B6EF485092B0EA6AB21C64E584EC4BC7BF7'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

