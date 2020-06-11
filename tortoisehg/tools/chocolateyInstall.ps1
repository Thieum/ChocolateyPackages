$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url64 = 'https://bitbucket.org/tortoisehg/files/downloads/tortoisehg-5.1.0-x64.msi'
$checksum64 = 'E5616C9DF653F96A86EC3B8273E4EF79358BF479B2C81D55D7B7FE736BBC3D40'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"