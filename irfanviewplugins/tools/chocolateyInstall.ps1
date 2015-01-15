$packageName = 'irfanviewplugins' 
$installerType = 'EXE'
$url = 'http://www.tucows.com/download/windows/files/irfanview_plugins_438_setup.exe' 
$silentArgs = "/silent"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

