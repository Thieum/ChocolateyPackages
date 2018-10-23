$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.85/cppcheck-1.85-x86-Setup.msi'
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.85/cppcheck-1.85-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = 'c7073dd05ec7100219c2cc4b935d2e7fa0f531e9e8a559097fc1bd150b3859d5'
  checksumType  = 'sha256'
  checksum64    = '0c35b667a882e22de135fb2eb14f27cb9d118e2cca1181b577cc8b607490aae7'
  checksumType64= 'sha256'
  silentArgs = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'

