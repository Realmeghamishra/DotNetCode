# Stage 1: Runtime Stage
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app

# Copy the published output from Azure DevOps Pipeline 
COPY __PUBLISHED_CODE__ .

# Set the entry point
ENTRYPOINT ["dotnet", "RoundTheCode.AzureTestProject.dll"]
