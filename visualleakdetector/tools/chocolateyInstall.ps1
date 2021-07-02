$ErrorActionPreference = 'Stop';
$packageName = 'visualleakdetector'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/Azure/vld/releases/download/v2.5.7/vld-2.5.7-setup.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'visualleakdetector'
  checksum      = '934DAECF7A08DB9ED5C6E9B48B87767FA5A76BFFB7C80FB1ADD07CBF87F6BBDF'
  checksumType  = 'sha256' 
  silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /CLOSEAPPLICATIONS /NORESTART' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs
