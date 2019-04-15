$packageName = 'wxwidgets' 
$installerType = 'EXE' 
$url = 'https://github.com/wxWidgets/wxWidgets/releases/download/v3.1.2/wxMSW-3.1.2-Setup.exe'
$checksum = '85ac5b18de191d9d5504b7106466b21b64e7249d'
$checksumType = 'sha1' 
$silentArgs = '/silent' 
$validExitCodes = @(0) 

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
