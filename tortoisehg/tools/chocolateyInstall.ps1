$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url64 = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-5.4.1-x64.msi'
$checksum64 = 'a3c68394d37acf3501418068f32036751fb0c50e888c143dff71f7d1179b4dcf'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"