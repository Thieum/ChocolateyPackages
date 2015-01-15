$packageName = 'sqlserverdatatools2012' 
$installerType = 'EXE'
$url = 'http://go.microsoft.com/fwlink/?LinkID=518798' 
$silentArgs = '/q' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

