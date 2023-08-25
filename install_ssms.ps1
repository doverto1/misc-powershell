# Define the download URL for the SSMS installer
$ssmsDownloadUrl = "https://aka.ms/ssmsfullsetup"

# Define the path where the installer will be downloaded
$installerPath = "C:\Users\$env:USERNAME\Desktop\SSMSInstaller.exe"

# Download the SSMS installer
Invoke-WebRequest -Uri $ssmsDownloadUrl -OutFile $installerPath

# Install SSMS
Start-Process -FilePath $installerPath -ArgumentList "/install /quiet /norestart"
