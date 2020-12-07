$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-5.6.0-x86.msi'
$checksum = '4BF3110676AF5262CF325DCCC0D560817EC5B2023F160D81EEE06DC8BE7800F4'
$checksumType = 'sha256'
$url64 = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-5.6.0-x64.msi'
$checksum64 = '85889D4634B833559AC9F5A94D01FFF51A16C6C51432899D42F5793532C3385F'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"