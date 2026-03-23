@echo off
:: Nome do Projeto Atualizado
title WinTurbo 2026 - Performance Edition
mode con: cols=70 lines=28
color 0b

:: Verifica Privilegios de Administrador
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :menu
) else (
    echo.
    echo  [!] ERRO: ACESSO NEGADO!
    echo      O WinTurbo precisa de privilegios de Administrador.
    echo      Clique com o botao direito e 'Executar como Adm'.
    pause >nul
    exit
)

:menu
cls
@echo off
:: Nome do Projeto Atualizado
title WinTurbo 2026 - Performance Edition
mode con: cols=70 lines=28
color 0b

:: Verifica Privilegios de Administrador
net session >nul 2>&1
if %errorLevel% == 0 (
    goto :menu
) else (
    echo.
    echo  [!] ERRO: ACESSO NEGADO!
    echo      O WinTurbo precisa de privilegios de Administrador.
    echo      Clique com o botao direito e 'Executar como Adm'.
    pause >nul
    exit
)

:menu
cls
echo.
echo  ====================================================================
echo     _      _  _        _  _____  _   _  ____   ____    ___  
echo    \ \    / /(_)[__]  / /|_   _|| | | ||  _ \ |  _ \  / _ \ 
echo     \ \  / /  _  _   / /   | |  | | | || |_) || |_) || | | |
echo      \ \/ /  | || \ / /    | |  | |_| ||  _ < |  _ < | |_| |
echo       \__/   |_||_|\_/     |_|   \___/ |_| \_\|_| \_\ \___/ 
echo                            EDITION 2026
echo  ====================================================================
echo.
echo  [1] Turbo Clean (Limpar Arquivos Temporarios)
echo  [2] Turbo Power (Ativar Desempenho Maximo)
echo  [3] Turbo Response (Otimizar Registro e Input Lag)
echo  [4] Turbo Net (Limpar Cache de DNS e Internet)
echo  [5] Turbo RAM (Desativar Servicos em Segundo Plano)
echo  [6] ATIVAR TUDO (OTIMIZACAO COMPLETA)
echo  [7] Sair do WinTurbo
echo.
echo  ====================================================================
set /p opt=" Digite o numero da operacao: "

if %opt% == 1 goto :limpeza
if %opt% == 2 goto :energia
if %opt% == 3 goto :regedit
if %opt% == 4 goto :dns
if %opt% == 5 goto :servicos
if %opt% == 6 goto :full
if %opt% == 7 exit

:limpeza
cls
echo [WinTurbo] Executando limpeza de arquivos inuteis...
del /s /f /q %temp%\*.* >nul 2>&1
del /s /f /q C:\Windows\Temp\*.* >nul 2>&1
del /s /f /q C:\Windows\Prefetch\*.* >nul 2>&1
echo [OK] Cache limpo!
if "%1"=="full" goto :eof
pause
goto :menu

:energia
cls
echo [WinTurbo] Desbloqueando potencia maxima do hardware...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
powercfg /setactive e9a42b02-d5df-448d-aa00-03f14749eb61 >nul 2>&1
echo [OK] Plano WinTurbo Ativado!
if "%1"=="full" goto :eof
pause
goto :menu

:regedit
cls
echo [WinTurbo] Ajustando chaves de registro para resposta rapida...
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 0 /f >nul 2>&1
reg add "HKU\.DEFAULT\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f >nul 2>&1
echo [OK] Resposta do sistema acelerada!
if "%1"=="full" goto :eof
pause
goto :menu

:dns
cls
echo [WinTurbo] Renovando conexao com a rede...
ipconfig /flushdns >nul 2>&1
echo [OK] Internet otimizada!
if "%1"=="full" goto :eof
pause
goto :menu

:servicos
cls
echo [WinTurbo] Suspendendo servicos de baixo impacto...
sc stop "Fax" >nul 2>&1
sc config "Fax" start= disabled >nul 2>&1
sc stop "MapsBroker" >nul 2>&1
sc config "MapsBroker" start= disabled >nul 2>&1
sc stop "DiagTrack" >nul 2>&1
sc config "DiagTrack" start= disabled >nul 2>&1
sc stop "WalletService" >nul 2>&1
sc config "WalletService" start= disabled >nul 2>&1
echo [OK] RAM liberada!
if "%1"=="full" goto :eof
pause
goto :menu

:full
cls
echo [!] INICIANDO O MODO WINTURBO FULL OTIMIZACAO...
call :limpeza full
call :energia full
call :regedit full
call :dns full
call :servicos full
echo.
echo  ====================================================================
echo    PROCESSO FINALIZADO! SEU PC FOI TURBINADO.
echo    Recomendamos reiniciar o sistema agora.
echo  ====================================================================
pause
goto :menu