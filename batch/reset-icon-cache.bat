@echo off

cd %homepath%\AppData\Local\Microsoft\Windows\Explorer
taskkill /f /im explorer.exe
del iconcache*
start explorer.exe
