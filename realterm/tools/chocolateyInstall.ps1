$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://osdn.net/frs/g_redir.php?m=acc&f=realterm%2FRealterm%2F2.0.0.70%2FRealterm_2.0.0.70_setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'realterm'

  checksum      = 'A82A7B727EFBFD95668A75DDDF534D623C14F674A14036A8A2E3BC5D97D9F17E'
  checksumType  = 'sha256'

  silentArgs='/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
