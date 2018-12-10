$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.86/cppcheck-1.86-x86-Setup.msi'
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.86/cppcheck-1.86-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = '3DA9F6B2F2A42907E506251B8B4F088CF0705FD23452DD451AD146BE669ACA46'
  checksumType  = 'sha256'
  checksum64    = 'FE7D046238CC9061A1E77F5C6649199C6424753A65BC3208BA7046AC479BCDDA'
  checksumType64= 'sha256'
  silentArgs = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'

