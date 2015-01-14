$packageName = 'justdecompile' 
$installerType = 'EXE'
$url = 'https://www.telerik.com/downloads/productfiles/btmba/TelerikJustDecompileSetup_2014.3.1021.0.exe' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

