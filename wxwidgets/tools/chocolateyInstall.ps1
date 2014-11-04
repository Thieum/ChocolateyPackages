$packageName = 'wxwidgets' 
$installerType = 'EXE' 
$url = 'http://sourceforge.net/projects/wxwindows/files/3.0.1/wxMSW-3.0.1-Setup.exe' 
$silentArgs = '/silent' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
