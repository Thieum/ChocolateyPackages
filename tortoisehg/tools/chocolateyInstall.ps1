$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-5.7.0-x86.msi'
$checksum = '154A0F5171E5D8E92562D36282EA45977AB79865F207A8FB120F13BF67CECE19'
$checksumType = 'sha256'
$url64 = 'https://www.mercurial-scm.org/release/tortoisehg/windows/tortoisehg-5.7.0-x64.msi'
$checksum64 = '7876FECDD0DFBF84CB956C1FCAA890167FA2A715389BE650B36F4978AD4DD109'
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