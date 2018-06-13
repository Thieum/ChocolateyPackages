$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://staruml.io/download/releases/StarUML%20Setup%203.0.0.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'staruml3'

  checksum      = 'd46cb2022b8a40c43045f72a569338c55ea0620510cc065d8ba28ac5306e4da0'
  checksumType  = 'sha256'

  silentArgs='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
