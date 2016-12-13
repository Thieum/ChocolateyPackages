$ErrorActionPreference = 'Stop';
$packageName = 'staruml2'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://staruml.io/download/release/v2.8.0/StarUML-v2.8.0.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  softwareName  = 'staruml2'
  checksum      = '9DC854E6230D20AAF69FEF6FEF39322A22B415145014BA4856C41A3F2256E222'
  checksumType  = 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs