<# 
.NAME
    NPEChooser
#>

Invoke-WebRequest -Uri "https://buy-download.norton.com/downloads/premium_services/NPE/6.5/x86/prod/NPE.exe" -OutFile "npe32.exe"
Invoke-WebRequest -Uri "https://buy-download.norton.com/downloads/premium_services/NPE/6.5/x64/prod/NPE.exe" -OutFile "npe.exe"

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$VUI                             = New-Object system.Windows.Forms.Form
$VUI.ClientSize                  = New-Object System.Drawing.Point(391,99)
$VUI.text                        = "VirusBye+ | NPE Version Chooser"
$VUI.TopMost                     = $false

$64                              = New-Object system.Windows.Forms.Button
$64.text                         = "x64 Bits"
$64.width                        = 188
$64.height                       = 90
$64.location                     = New-Object System.Drawing.Point(5,5)
$64.Font                         = New-Object System.Drawing.Font('Microsoft Sans Serif',26)

$32                              = New-Object system.Windows.Forms.Button
$32.text                         = "x32 Bits"
$32.width                        = 188
$32.height                       = 90
$32.location                     = New-Object System.Drawing.Point(199,5)
$32.Font                         = New-Object System.Drawing.Font('Microsoft Sans Serif',26)

$VUI.controls.AddRange(@($64,$32))


#region Logic 
$64.Add_Click({
    .\npe.exe
})

$32.Add_Click({
    .\npe32.exe
})
#endregion

[void]$VUI.ShowDialog()