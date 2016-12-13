Function IsInstalled {
    $ver = (Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full').Release
    return (!($ver -eq $null) -and ($ver -ge 394254))
}

if (IsInstalled) {
    Write-Host "Microsoft .NET Framework 4.6.1 or later is already installed"
}
else {
    $packageName = 'DotNet461'
    $toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
    $url = 'https://download.microsoft.com/download/E/4/1/E4173890-A24A-4936-9FC9-AF930FE3FA40/NDP461-KB3102436-x86-x64-AllOS-ENU.exe' 

    $packageArgs = @{
    packageName   = $packageName
    unzipLocation = $toolsDir
    fileType      = 'exe' 
    url           = $url
    softwareName  = 'DotNet461'
    checksum      = 'BEAA901E07347D056EFE04E8961D5546C7518FAB9246892178505A7BA631C301'
    checksumType  = 'sha256' 
    silentArgs = "/q /norestart /log ""$env:temp\net461.log"""
    validExitCodes = @(
            0, # success
            3010 # success, restart required
        )
    } 
    
    Install-ChocolateyPackage @packageArgs

    if (-Not (IsInstalled)) {
        Write-Host "A restart is required to finalise the Microsoft .NET Framework 4.6.1 installation"
    }
}
