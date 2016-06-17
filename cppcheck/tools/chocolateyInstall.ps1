$packageName = 'cppcheck' 
$installerType = 'MSI'
$url = 'https://github.com/danmar/cppcheck/releases/download/1.74/cppcheck-1.74-x86-Setup.msi' 
$urlX64 = 'https://github.com/danmar/cppcheck/releases/download/1.74/cppcheck-1.74-x64-Setup.msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)
 
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$urlX64" -validExitCodes $validExitCodes

