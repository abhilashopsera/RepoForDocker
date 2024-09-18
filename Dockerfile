FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /app
EXPOSE 8080
EXPOSE 8081
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["dotnet-repo.csproj", "."]
RUN dotnet restore "./dotnet-repo.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "./dotnet-repo.csproj" -c ${BUILD_CONFIGURATION} -o /app/build
FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "./dotnet-repo.csproj" -c ${BUILD_CONFIGURATION} -o /app/publish /p:UseAppHost=false# Final image with application files
FROM build AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "dotnet-repo.dll"]
