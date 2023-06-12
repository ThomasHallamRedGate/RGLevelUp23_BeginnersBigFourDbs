:: In connection string specify localhost,1401 (for example), if not default

@echo off
set port=3306
set /p port="Port (default:3306):"

docker run -d --name mysql-database-%port% ^
  -e "MYSQL_ROOT_PASSWORD=Password123" ^
  -p %port%:3306 ^
  -d mysql:latest
