$ErrorActionPreference = 'Stop';
$packageName = 'dotnetinstaller'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/dotnetinstaller/dotnetinstaller/releases/download/3.2.115/dotNetInstaller.3.2.115.0.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  softwareName  = 'dotnetinstaller'
  checksum      = '121CEDC056EBE7424E4C3BA54D948860C8D9D5D05A88E5AD36C4CF6314FA7743'
  checksumType  = 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs