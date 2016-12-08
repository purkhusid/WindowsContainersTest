FROM microsoft/windowsservercore:10.0.14393.447
MAINTAINER sjuberman

SHELL ["powershell"]

#Get MSBuild from official source
#Install MSBuild
#Remove exe file
RUN Invoke-WebRequest "https://download.microsoft.com/download/E/E/D/EEDF18A8-4AED-4CE0-BEBE-70A83094FC5A/BuildTools_Full.exe" -OutFile "$env:TEMP\BuildTools_Full.exe" -UseBasicParsing ; \
    Start-Process "$env:TEMP\BuildTools_Full.exe" -ArgumentList "/Silent", "/Full" -Wait ; \
    Remove-Item "$env:TEMP" -Force -Recurse

#Add .NET + ASP.NET
RUN Install-WindowsFeature Net-Framework-45-ASPNET ; \
    Install-WindowsFeature Web-Asp-Net45

#Add NuGet
RUN Invoke-WebRequest "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe" -OutFile "C:\windows\nuget.exe" -UseBasicParsing

#Install Web Targets
WORKDIR "C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v14.0"
RUN &  "C:\windows\nuget.exe" Install MSBuild.Microsoft.VisualStudio.Web.targets -Version 14.0.0.3
RUN mv 'C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v14.0\MSBuild.Microsoft.VisualStudio.Web.targets.14.0.0.3\tools\VSToolsPath\*' 'C:\Program Files (x86)\MSBuild\Microsoft\VisualStudio\v14.0'

#Add MSBuild to path
RUN setx PATH '%PATH%;C:\\Program Files (x86)\\MSBuild\\14.0\\Bin\\'  
CMD ["C:\\Program Files (x86)\\MSBuild\\14.0\\Bin\\msbuild.exe"] 
