$ErrorActionPreference = 'Stop';
$packageName = 'cppcheck'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64 = 'https://github.com/danmar/cppcheck/releases/download/2.9/cppcheck-2.9-x64-Setup.msi'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url64bit      = $url64
  softwareName  = 'cppcheck'
  checksum64    = '090DA7BBE16D2E9B1658BC482245B8D342C66A8165DC5F83B0E06A7375FB9B69'
  checksumType64= 'sha256'
  silentArgs    = '/quiet ADDLOCAL=CppcheckCore,CLI,GUI,Translations,ConfigFiles,PlatformFiles,PythonAddons,CRT /norestart'
  validExitCodes = @(
            0, # success
            3010 # success, restart required
        )
}

Install-ChocolateyPackage @packageArgs
Install-ChocolateyPath "$($env:SystemDrive)\Program Files\Cppcheck" -PathType 'Machine'
