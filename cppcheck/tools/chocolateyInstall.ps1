$packageName = 'cppcheck' 
$installerType = 'MSI'
$url = 'http://downloads.sourceforge.net/project/cppcheck/cppcheck/1.70/cppcheck-1.70-x86-Setup.msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

