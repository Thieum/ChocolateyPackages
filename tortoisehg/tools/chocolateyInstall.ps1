$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url64 = 'https://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.8.2-x64.msi'
$checksum64 = '8A48DDAC69381D01C1364744C6054E275C5EFE38158E32BA6A6286BCF0A7686D'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"