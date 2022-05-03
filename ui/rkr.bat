if not exist "rkr.exe" powershell -command Invoke-WebRequest -Uri "https://downloadcenter.mcafee.com/products/mcafee-avert/rr/rootkitremover.exe" -OutFile "rkr.exe"
rkr.exe