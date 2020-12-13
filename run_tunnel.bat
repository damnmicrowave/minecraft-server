@echo off
set /p subdomain="Enter unique subdomain name (at least 4 characters): "
set /p host="Enter your host (without port): "
set /p port="Enter your port: "
lt -p %port% -l %host% -s %subdomain%
