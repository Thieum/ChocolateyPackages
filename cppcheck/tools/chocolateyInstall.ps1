$packageName = 'cppcheck' 
$installerType = 'MSI'
$url = 'http://github.com/danmar/cppcheck/releases/download/1.75/cppcheck-1.75-x86-Setup.msi' 
$urlX64 = 'http://github.com/danmar/cppcheck/releases/download/1.75/cppcheck-1.75-x64-Setup.msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$urlX64" -validExitCodes $validExitCodes

