if not exist "stinger.exe" powershell -command Invoke-WebRequest -Uri "https://downloadcenter.mcafee.com/products/mcafee-avert/stinger/stinger32.exe" -OutFile "stinger.exe"
stinger.exe --AD --GO --SILENT