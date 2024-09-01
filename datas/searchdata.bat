@echo off
setlocal enabledelayedexpansion

set "dbfile=datenbank.txt"

echo Gebe die ID ein, nach der gesucht werden soll:
set /p search_id=

for /f "tokens=1-4 delims=;" %%a in (%dbfile%) do (
    if "%%a"=="%search_id%" (
        echo Gefundener Datensatz: %%a; %%b; %%c; %%d
    )
)
