$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url64 = 'https://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.9.0-x64.msi'
$checksum64 = '426C4CFFFEB933B10C7F3E2C2B13E9D843B0A513AD1762FF17DDA0B57492EC08'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"