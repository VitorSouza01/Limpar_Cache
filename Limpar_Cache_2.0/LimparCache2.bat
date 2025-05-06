
@echo off
chcp 65001 >nul
title Limpar Cache

: MENU
cls
echo =====================================================================================================
echo(
echo  ##       #### ##     ## ########     ###    ########   ######     ###     ######  ##     ## ######## 
echo  ##        ##  ###   ### ##     ##   ## ##   ##     ## ##    ##   ## ##   ##    ## ##     ## ##       
echo  ##        ##  #### #### ##     ##  ##   ##  ##     ## ##        ##   ##  ##       ##     ## ##       
echo  ##        ##  ## ### ## ########  ##     ## ########  ##       ##     ## ##       ######### ######   
echo  ##        ##  ##     ## ##        ######### ##   ##   ##       ######### ##       ##     ## ##       
echo  ##        ##  ##     ## ##        ##     ## ##    ##  ##    ## ##     ## ##    ## ##     ## ##       
echo  ######## #### ##     ## ##        ##     ## ##     ##  ######  ##     ##  ######  ##     ## ######## 
echo(
echo =====================================================================================================
echo(
echo  [ DIGITE O NÚMERO CORRESPONDENTE À OPÇÃO DESEJADA PARA LIMPAR O CACHE DO WINDOWS ]
echo(

echo  [1] - Limpeza Usuário.
echo  ^> Limpa arquivos temporários do usuário.
echo(
echo  [2] - Limpeza Sistema.
echo ^> Limpa arquivos temporários do sistema.
echo(
echo  [3] - Limpeza DNS.
echo ^> Limpa cache do DNS.
echo(
echo  [4] - Limpeza Completa.
echo  ^> Limpa todos os caches.
echo(
set /p opcao= Digite o número da opção desejada:

if "%opcao%"=="1" (
	:: Limpa arquivos temporários do usuário
	echo impando arquivos temporários do usuário...
	del /q /f /s "%TEMP%\*.*"
	rd /s /q "%TEMP%"
	pause
	goto MENU
	
) else if "%opcao%"=="2" (
	:: Limpa arquivos temporários do sistema
	echo Limpando arquivos temporários do sistema...
	del /q /f /s "C:\Windows\Temp\*.*"
	rd /s /q "C:\Windows\Temp"
	pause
	goto MENU
	
) else if "%opcao%"=="3" (
	:: Limpa cache do DNS
	echo Limpando cache de DNS...
	ipconfig /flushdns
	pause
	goto MENU
	
) else if "%opcao%"=="4" (
	:: Limpa todo os cache
	echo Limpando todos os caches...
	del /q /f /s "%TEMP%\*.*"
	rd /s /q "%TEMP%"
	pause
	del /q /f /s "C:\Windows\Temp\*.*"
	rd /s /q "C:\Windows\Temp"
	pause
	ipconfig /flushdns
	pause
	goto MENU

) else (
	echo(
	echo [ OPÇÃO INVÁLIDA! TENTE NOVAMENTE! ]
	echo(
	pause
	goto MENU
)

pause > nul
