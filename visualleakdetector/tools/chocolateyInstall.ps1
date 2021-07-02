$ErrorActionPreference = 'Stop';
$packageName = 'visualleakdetector'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/KindDragon/vld/releases/download/v2.5.1/vld-2.5.1-setup.exe' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE' 
  url           = $url
  softwareName  = 'visualleakdetector'
  checksum      = '6E9504920F81AED1CF52674BD512BBEF3CD8A1B8A860CAB0FE03C6F19D7008B3'
  checksumType  = 'sha256' 
  silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /CLOSEAPPLICATIONS /NORESTART' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs
