$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.76.1/cppcheck-1.76.1-x86-Setup.msi' 
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.76.1/cppcheck-1.76.1-x64-Setup.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = '9F249E9C651C1C37972D46D9197343F50465DC09970AB27059688A8C272278CA'
  checksumType  = 'sha256' 
  checksum64    = 'D17D5C124C5D5C6EDAA44023BD381815A60068A0FDB6C645FFBAD8C87CC61106'
  checksumType64= 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs

