$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://staruml.io/download/releases/StarUML%20Setup%203.0.2.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'staruml3'

  checksum      = '773528F7D7C1551ABB7C1A6439E73C3C3E7F1711C34DBB179ACE60083F31ED25'
  checksumType  = 'sha256'

  silentArgs='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
