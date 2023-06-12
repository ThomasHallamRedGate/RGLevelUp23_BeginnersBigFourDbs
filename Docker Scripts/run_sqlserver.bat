:: In connection string specify localhost,1401 (for example), if not default

@echo off
set port=1433
set /p port="Port (default:1433):"

docker run -d --name sql-server-database-%port% ^
  -e "ACCEPT_EULA=Y" ^
  -e "MSSQL_SA_PASSWORD=Password123" ^
  -p %port%:1433 ^
  -d mcr.microsoft.com/mssql/server:2019-latest
