$packageName = 'wxwidgets' 
$installerType = 'EXE' 
$url = 'https://github.com/wxWidgets/wxWidgets/releases/download/v3.3.1/wxMSW-3.3.1-Setup.exe'
$checksum = '54e5a57a9d9275f7077acb50152b733a93ab1f9f08ddbf1d04bacbb4ee0d8e50'
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
