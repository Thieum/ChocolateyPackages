$packageName = 'realterm' 
$installerType = 'EXE'
$url = 'https://osdn.net/frs/g_redir.php?m=acc&f=realterm%2FRealterm%2F2.0.0.70%2FRealterm_2.0.0.70_setup.exe' 
$silentArgs = '/S' 
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

