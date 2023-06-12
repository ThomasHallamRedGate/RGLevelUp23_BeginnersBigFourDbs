:: In connection string specify localhost,1401 (for example), if not default

@echo off
set port=1521
set /p port="Port (default:1521):"

docker run -d --name oracle-database-%port% ^
  -e "ORACLE_PWD=Password123" ^
  -p %port%:1521 ^
  -d container-registry.oracle.com/database/free:latest
