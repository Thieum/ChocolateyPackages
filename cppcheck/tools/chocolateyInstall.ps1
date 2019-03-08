$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://github.com/danmar/cppcheck/releases/download/1.87/cppcheck-1.87-x86-Setup.msi'
$url64 = 'https://github.com/danmar/cppcheck/releases/download/1.87/cppcheck-1.87-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum      = '63ED92BC86B5B10710791D5609AE5E7F87AB594B7A7AD32DE491680EC5F7F25A'
  checksumType  = 'sha256'
  checksum64    = '3F44683661F08BE7DC5749FDCD9B9A41118CB3533DA9BA68645F33D2BAA77F14'
  checksumType64= 'sha256'
  silentArgs = '/quiet'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'

