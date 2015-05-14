$packageName = 'cppcheck' 
$installerType = 'MSI'
$url = 'http://downloads.sourceforge.net/project/cppcheck/cppcheck/1.69/cppcheck-1.69-x86-Setup.msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

