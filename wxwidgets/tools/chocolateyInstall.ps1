$packageName = 'wxwidgets' 
$installerType = 'EXE' 
$url = 'https://github.com/wxWidgets/wxWidgets/releases/download/v3.1.0/wxMSW-3.1.0-Setup.exe' 
$silentArgs = '/silent' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
