:: In connection string specify localhost,1401 (for example), if not default

@echo off
set port=5432
set /p port="Port (default:5432):"

docker run -d --name postgres-database-%port% ^
  -e "POSTGRES_PASSWORD=Password123" ^
  -p %port%:5432 ^
  -d postgres:latest
