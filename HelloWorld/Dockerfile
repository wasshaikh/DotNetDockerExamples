FROM microsoft/aspnetcore-build:1.0-1.1 as BUILD
COPY . /src
WORKDIR /src
RUN dotnet restore ./HelloWorld.csproj && \
    dotnet publish ./HelloWorld.csproj -c Release -o ./obj/Docker/publish

FROM microsoft/aspnetcore:1.1.2
ARG source
WORKDIR /app
EXPOSE 80
COPY --from=BUILD /src/obj/Docker/publish .
ENTRYPOINT ["dotnet", "HelloWorld.dll"]
