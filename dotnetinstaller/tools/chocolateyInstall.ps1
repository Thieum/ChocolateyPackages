$packageName = 'dotnetinstaller' 
$installerType = 'MSI'
$url = 'http://code.dblock.org/downloads/dotnetinstaller/dotNetInstaller.2.3.msi' 
$silentArgs = '/quiet' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

