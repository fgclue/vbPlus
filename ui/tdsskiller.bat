if not exist "kr.exe" Invoke-WebRequest -Uri "https://media.kaspersky.com/utilities/VirusUtilities/EN/tdsskiller.exe" -OutFile "kr.exe" # https://downloadcenter.mcafee.com/products/mcafee-avert/rr/rootkitremover.exe
kr.exe -silent -tdlfs -dcexact -accepteula -accepteulaksn