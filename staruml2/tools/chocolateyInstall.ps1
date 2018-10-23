$ErrorActionPreference = 'Stop';
$packageName = 'staruml2'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://s3.amazonaws.com/staruml-bucket/releases-v2/StarUML-v2.8.1.msi' 

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI' 
  url           = $url
  softwareName  = 'staruml2'
  checksum      = 'DAFA7AE9DCCE861B16632824A9B8BB8519AA6628856BCF22FD9317BEF51DDE97'
  checksumType  = 'sha256' 
  silentArgs = '/quiet' 
  validExitCodes = @(0)
} 
 
Install-ChocolateyPackage @packageArgs