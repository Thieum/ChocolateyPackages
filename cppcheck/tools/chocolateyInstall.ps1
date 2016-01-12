$packageName = 'cppcheck' 
$installerType = 'MSI'
$url = 'ftp://cppcheck.osuosl.org/cppcheck/1.72/cppcheck-1.72-x86-Setup.msi' 
$urlX64 = 'ftp://cppcheck.osuosl.org/cppcheck/1.72/cppcheck-1.72-x64-Setup.msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$urlX64" -validExitCodes $validExitCodes

