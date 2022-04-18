@echo off

SET path=C:\Program Files (x86)\Audacity\audacity.exe

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Audacity"         /t REG_SZ /v "" /d "Open with Audacity"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Audacity"         /t REG_EXPAND_SZ /v "Icon" /d "%path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with Audacity\command" /t REG_SZ /v "" /d "%path% \"%%1\"" /f
pause
