@echo off
setlocal enabledelayedexpansion

set "dbfile=datenbank.txt"

echo Geben sie ihre Email Adresse ein.
set /p email="Email: "

echo Geben sie ihr Password ein.
set /p password="Password: "

echo Geben sie ihre Telefonn Nummer ein.
set /p number="Telefon Nummer: "

:new
echo Wollen sie noch ein feld hinzufügen?
echo Ja/Nein
set /p yesorno=

if %yesorno%==Ja goto

:newfold
echo Geben sie ein was sie im neuen feld speichern wollen
set /p categorie=""
goto newtext

:newtext
echo Gib einen text für dein neues feld ein!
set /p newtext=""
goto finishnewfold

:finishnewfold
echo Drücken sie eine beliebige taste um die neue Kategorie zu erstellen!
set /p enter=""
goto yournewfold

:yournewfold
echo %newtext%
set /p categorie2="%categorie%: "

:finish
echo %email%;****;number;%categorie%>> %dbfile%
cls
echo Datensatz hinzugefügt!