Function IsInstalled {
    $ver = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full').Release
    return (!($ver -eq $null) -and ($ver -ge 394271))
}

if (IsInstalled) {
    Write-Host "Microsoft .NET Framework 4.6.1 or later is already installed"
}
else {
    $packageName = 'DotNet461'
    $installerType = 'exe'
    $Url = 'https://download.microsoft.com/download/3/5/9/35980F81-60F4-4DE3-88FC-8F962B97253B/NDP461-KB3102438-Web.exe'
    $silentArgs = "/Passive /NoRestart /Log ""$env:temp\net461.log"""
    $validExitCodes = @(
        0, # success
        3010 # success, restart required
    )

    Install-ChocolateyPackage $packageName $installerType $silentArgs $Url -validExitCodes $validExitCodes

    if (-Not (IsInstalled)) {
        Write-Host "A restart is required to finalise the Microsoft .NET Framework 4.6.1 installation"
    }
}
