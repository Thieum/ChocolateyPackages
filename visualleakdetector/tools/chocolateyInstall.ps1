$packageName = 'visualleakdetector' 
$installerType = 'EXE'
$url = 'http://vld.codeplex.com/downloads/get/670164' # download url
$silentArgs = '/S' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes