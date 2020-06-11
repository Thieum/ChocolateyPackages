$packageName = 'wxwidgets' 
$installerType = 'EXE' 
$url = 'https://github.com/wxWidgets/wxWidgets/releases/download/v3.1.3/wxMSW-3.1.3-Setup.exe'
$checksum = 'BEE29B7693C14A9A725449B651D11DAF304DAB443D506EC11D864AD8556E1450'
$checksumType = 'sha256' 
$silentArgs = '/silent' 
$validExitCodes = @(0) 

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
