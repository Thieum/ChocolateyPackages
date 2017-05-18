$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.79/cppcheck-1.79-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.79/cppcheck-1.79-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = 'FAD64FC22D9C3FA6F03FF98C3315716D61133D91B713117A063C8F2BE96F8A58'
  checksumType  = 'sha256' 
  checksum64    = '3AEF4651E1E61028B8364B069EE0FA163735213478FA17CE40874B2A5C30DD26'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

