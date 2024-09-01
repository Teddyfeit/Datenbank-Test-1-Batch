@echo off
setlocal enabledelayedexpansion

set "dbfile=datenbank.txt"

echo Alle Datensätze in der Datenbank:
for /f "tokens=1-4 delims=;" %%a in (%dbfile%) do (
    echo %%a; %%b; %%c; %%d
)