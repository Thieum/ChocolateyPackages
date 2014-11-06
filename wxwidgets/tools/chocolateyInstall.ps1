$packageName = 'wxwidgets' 
$installerType = 'EXE' 
$url = 'http://sourceforge.net/projects/wxwindows/files/2.9.1/wxMSW-2.9.1-Setup.exe/download' 
$silentArgs = '/silent' 
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
