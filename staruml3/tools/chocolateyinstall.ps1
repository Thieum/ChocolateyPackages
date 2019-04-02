$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://staruml.io/download/releases/StarUML%20Setup%203.1.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'staruml3'

  checksum      = '4CF3A7030F287FD0739AB49655655255C7DDEEB75F705DEF9157AEDC45AEFBF9'
  checksumType  = 'sha256'

  silentArgs='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
