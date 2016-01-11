$packageName = 'cppcheck' 
$installerType = 'MSI'
$url = 'http://sourceforge.net/projects/cppcheck/files/cppcheck/1.71/cppcheck-1.71-x86-Setup.msi' 
$urlX64 = 'http://sourceforge.net/projects/cppcheck/files/cppcheck/1.71/cppcheck-1.71-x64-Setup.msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$urlX64" -validExitCodes $validExitCodes

