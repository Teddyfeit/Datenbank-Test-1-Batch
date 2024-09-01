@echo off
cls
:menu
echo        Wilkommen
echo ============================| 
echo Wilkommen in der Datenbank! |
echo ============================|
echo Wahlen sie eine option.     |
echo ============================|
echo 1. Neuer Datensätze.
echo 2. Nach Datensätzen Suchen.
echo 3. Dätensätze Anschauen
set /p choice="Was Wahlen Sie: "

if %choice%==3 goto lookdata
if %choice%==2 goto searchdata
if %choice%==1 goto newdata
if %choice%==666 goto sixsixsix

:newdata
echo Wollen sie wirklich einen neuen datensatz machen?
set /p yesno="Ja/Nein:" 

if %yesno%==ja goto ja
if %yesno%==nein goto no

:ja
start "datas/infologin.bat" ""
exit

:no
goto :menu

:searchdata
start "datas/searchdata.bat" ""
exit

:lookdata
start "datas/lokkatdata.bat" ""
exit

:sixsixsix
msg 666