$ErrorActionPreference = 'Stop';
$packageName = 'visualleakdetector'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/Azure/vld/releases/download/v2.5.10/vld-2.5.10-setup.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'visualleakdetector'
  checksum      = '6fd3113bb624a8d414a44defb872f38394807edc1af0b503618ee0886f651e1d'
  checksumType  = 'sha256' 
  silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /CLOSEAPPLICATIONS /NORESTART' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs
