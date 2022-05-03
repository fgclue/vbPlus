<# 
.NAME
    VirusByeUI
#>

Set-Location ..
xcopy .\config.vbc ui
Set-Location .\ui
Rename-Item config.vbc conf.vbc 
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$VUI                             = New-Object system.Windows.Forms.Form
$VUI.ClientSize                  = New-Object System.Drawing.Point(400,82)
$VUI.text                        = "VirusBye+ UI"
$VUI.TopMost                     = $false

$NPE                             = New-Object system.Windows.Forms.Button
$NPE.text                        = "Norton Power Eraser"
$NPE.width                       = 189
$NPE.height                      = 30
$NPE.location                    = New-Object System.Drawing.Point(5,8)
$NPE.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$TDSSKiller                      = New-Object system.Windows.Forms.Button
$TDSSKiller.text                 = "TDSSKiller"
$TDSSKiller.width                = 189
$TDSSKiller.height               = 30
$TDSSKiller.location             = New-Object System.Drawing.Point(202,8)
$TDSSKiller.Font                 = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$stinger                         = New-Object system.Windows.Forms.Button
$stinger.text                    = "McAfee Stinger (Requires .NET)"
$stinger.width                   = 189
$stinger.height                  = 30
$stinger.location                = New-Object System.Drawing.Point(5,44)
$stinger.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',9)

$rkr                             = New-Object system.Windows.Forms.Button
$rkr.text                        = "Mcafee RootkitRemover"
$rkr.width                       = 189
$rkr.height                      = 30
$rkr.location                    = New-Object System.Drawing.Point(202,44)
$rkr.Font                        = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$VUI.controls.AddRange(@($NPE,$TDSSKiller,$stinger,$rkr))


#region Logic 
$NPE.Add_Click({
    .\npe.ps1
})

$TDSSKiller.Add_Click({
    .\tdsskiller.bat
})

$stinger.Add_Click({
    .\stinger.bat
})

$rkr.Add_Click({
    .\rkr.bat
})
#endregion

[void]$VUI.ShowDialog()