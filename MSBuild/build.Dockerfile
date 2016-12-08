FROM msbuild
SHELL ["powershell"]
#This image is used for building the app

#Copy the source
COPY . 'C:\\build\\'
WORKDIR 'C:\\build\\'

#Restore NuGet packages
RUN ["nuget.exe", "restore"]

#Build solution
RUN msbuild Solution.sln

CMD ["powershell"]
