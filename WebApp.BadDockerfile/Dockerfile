FROM microsoft/dotnet:latest

COPY . /app
WORKDIR /app

RUN dotnet restore WebApp.BadDockerfile.csproj
RUN dotnet build WebApp.BadDockerfile.csproj

EXPOSE 80

ENV ASPNETCORE_URLS https://*:80

 ENTRYPOINT ["dotnet", "run"]

