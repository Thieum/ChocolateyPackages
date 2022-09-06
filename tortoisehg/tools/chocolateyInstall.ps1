$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-6.2-x86.msi'
$checksum = 'CDC3FF3E62D7997F5D8B7EBD6F232C2F46B089AC9FF76D993438075DACC1A79F'
$checksumType = 'sha256'
$url64 = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-6.2-x64.msi'
$checksum64 = 'F21F8FFDE40AB32FAC9C49A43F4CE519AB1194232D4EB56D45E31B963999D75D'
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