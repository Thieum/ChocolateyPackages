$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.80/cppcheck-1.80-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.80/cppcheck-1.80-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = '19B326B605128508B14B95E8901F87B857A6FBC3F29CCC3E3D8087FE46C47EB7'
  checksumType  = 'sha256' 
  checksum64    = 'F798EA7923861B3F8D1E25E435E299B2CC7AB56563C02BD52596A3666A865542'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

