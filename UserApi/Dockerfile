FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY UserApi/UserApi.csproj UserApi/
RUN dotnet restore UserApi/UserApi.csproj
COPY UserApi/ UserApi/
WORKDIR /src/UserApi
RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
EXPOSE 80
ENTRYPOINT ["dotnet", "UserApi.dll"]
