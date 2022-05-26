$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-6.1.0-x86.msi'
$checksum = '13FECC77A7543411B0D4943777F7621474AD144BA7CDE304CBAC960DD7456320'
$checksumType = 'sha256'
$url64 = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-6.1.0-x64.msi'
$checksum64 = '738782378C54185ADFA6C918E146DD4069F94376834FC09F2917C3B59612735B'
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