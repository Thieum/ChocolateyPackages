$packageName = 'realterm' 
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/realterm/files/Realterm/2.0.0.70/Realterm_2.0.0.70_Signed_Wrapper_setup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

