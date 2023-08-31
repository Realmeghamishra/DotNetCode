# Stage 1: Runtime Stage
FROM mcr.microsoft.com/dotnet/aspnet:6.0
WORKDIR /app

# Copy the published output from Azure DevOps Pipeline 
#COPY __PUBLISHED_CODE__ .
#COPY /publish .
#COPY . .
#COPY --from=publish /app/publish .

COPY /publish .

# Set the entry point
ENTRYPOINT ["dotnet", "RoundTheCode.AzureTestProject.dll"]
