@echo off
cls
echo ===============================
echo     LIMPANDO CACHE DO WINDOWS
echo ===============================

:: Limpa arquivos temporários do usuário
echo Limpando arquivos temporários do usuário...
del /q /f /s "%TEMP%\*.*"
rd /s /q "%TEMP%"

:: Limpa arquivos temporários do sistema
echo Limpando arquivos temporários do sistema...
del /q /f /s "C:\Windows\Temp\*.*"
rd /s /q "C:\Windows\Temp"

:: Limpa cache do DNS
echo Limpando cache de DNS...
ipconfig /flushdns
