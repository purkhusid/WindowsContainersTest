FROM microsoft/windowsservercore:10.0.14393.447
MAINTAINER sjuberman

SHELL ["powershell"]

#Get MSBuild from official source
#Install MSBuild
#Remove exe file
#RUN Invoke-WebRequest "https://download.microsoft.com/download/E/E/D/EEDF18A8-4AED-4CE0-BEBE-70A83094FC5A/BuildTools_Full.exe" -OutFile "$env:TEMP\BuildTools_Full.exe" -UseBasicParsing ; \
#    &  "$env:TEMP\BuildTools_Full.exe" /Silent /Full ; \
#    Remove-Item "$env:TEMP\BuildTools_Full.exe" -Force
# Todo: delete the BuildTools_Full.exe file in this layer
RUN Invoke-WebRequest "https://download.microsoft.com/download/E/E/D/EEDF18A8-4AED-4CE0-BEBE-70A83094FC5A/BuildTools_Full.exe" -OutFile "$env:TEMP\BuildTools_Full.exe" -UseBasicParsing ; \
    Start-Process "$env:TEMP\BuildTools_Full.exe" -ArgumentList "/Silent", "/Full" -Wait ; \
    Remove-Item "$env:TEMP" -Force -Recurse

