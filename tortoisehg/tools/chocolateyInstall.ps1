$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url64 = 'https://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.9.1-x64.msi'
$checksum64 = 'B30D07A55386603C583AAD9C1BEC4AE3CD8D0749E08CA7994AD38EF534D069CF'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"