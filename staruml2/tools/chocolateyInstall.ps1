$packageName = 'cppcheck' 
$installerType = 'MSI'
$url = 'http://staruml.io/download/release/v2.0.0/StarUML-v2.0.0.msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

