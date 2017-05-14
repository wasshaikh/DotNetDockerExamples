#!bin/bash
set -e
dotnet restore ./DockerDotNetExamples.sln
dotnet test WebApp.Tests/WebApp.Tests.csproj
rm -rf ./obj/Docker/publish
dotnet publish ./DockerDotNetExamples.sln -c Release -o ./obj/Docker/publish