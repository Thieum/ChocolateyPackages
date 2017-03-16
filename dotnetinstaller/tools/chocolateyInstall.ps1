$ErrorActionPreference = 'Stop';
$packageName = 'dotnetinstaller'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/dblock/dotnetinstaller/releases/download/2.4/dotNetInstaller.2.4.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  softwareName  = 'dotnetinstaller'
  checksum      = 'CE750FBC872EF177EFCE9DD07A5A5BAE6C3E85163424D6634BAAD0DC1AF5CF2E'
  checksumType  = 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs