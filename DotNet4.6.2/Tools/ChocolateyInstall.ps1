Function IsInstalled {
    $ver = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full').Release
    return (!($ver -eq $null) -and ($ver -ge 394802))
}

if (IsInstalled) {
    Write-Host "Microsoft .NET Framework 4.6.2 or later is already installed"
}
else {
    $packageName = 'DotNet462'
    $installerType = 'exe'
	$Url = 'https://download.microsoft.com/download/F/9/4/F942F07D-F26F-4F30-B4E3-EBD54FABA377/NDP462-KB3151800-x86-x64-AllOS-ENU.exe'
    $silentArgs = "/q /norestart /log ""$env:temp\net462.log"""
    $validExitCodes = @(
        0, # success
        3010 # success, restart required
    )

    Install-ChocolateyPackage $packageName $installerType $silentArgs $Url -validExitCodes $validExitCodes

    if (-Not (IsInstalled)) {
        Write-Host "A restart is required to finalise the Microsoft .NET Framework 4.6.2 installation"
    }
}
