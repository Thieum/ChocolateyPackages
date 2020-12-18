$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-5.6.1-x86.msi'
$checksum = '3BA58ADDD6F93E1558593014D93406802F58EB732186AB2B8515A4AFC63AD6CD'
$checksumType = 'sha256'
$url64 = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-5.6.1-x64.msi'
$checksum64 = '080A8935C97AF52FC463844B0EBA1C9A3AE17AB1C2B933679B9FD64FBFB69F68'
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