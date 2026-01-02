$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://github.com/danmar/cppcheck/releases/download/2.19.0/cppcheck-2.19.0-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum64    = 'aac15f6dc2b404b3b2562015419f11d91f391e686279cabd20627a8435782128'
  checksumType64= 'sha256'
  silentArgs    = '/quiet ADDLOCAL=CppcheckCore,CLI,GUI,Translations,ConfigFiles,PlatformFiles,PythonAddons,CRT /norestart'
  validExitCodes = @(
            0, # success
            3010 # success, restart required
        )
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'
