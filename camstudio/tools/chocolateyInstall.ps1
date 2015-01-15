$packageName = 'camstudio' 
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/camstudio/files/stable/CamStudio_2.7_r316_setup.exe' 
$silentArgs = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

