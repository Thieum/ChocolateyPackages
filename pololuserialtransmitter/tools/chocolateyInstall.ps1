$packageName = 'pololuserialtransmitter' 
$installerType = 'EXE'
$url = 'https://www.pololu.com/file/download/PololuSerialTransmitterV1.3.zip?file_id=0J132' 
$silentArgs = '' 
$validExitCodes = @(0)
$destinationPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$setupFile = Join-Path $destinationPath "setup.exe"

Install-ChocolateyZipPackage "$packageName" $url $destinationPath

Install-ChocolateyInstallPackage "$packageName" "$installerType" $setupFile

