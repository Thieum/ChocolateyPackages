$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.82/cppcheck-1.82-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.82/cppcheck-1.82-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = '5C3EFDF7B66AA194BD4362FD359B876CDD7577FCA796325D98E14BE56924618A'
  checksumType  = 'sha256' 
  checksum64    = '240DBB9462827E0BFB01345E92C84564E7193C2CFC823A1758BC8D12A9105991'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

