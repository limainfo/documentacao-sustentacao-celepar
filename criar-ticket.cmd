@echo off
REM Uso:
REM   criar-ticket.cmd 5678 correcao-erro-x

setlocal enabledelayedexpansion

set TEMPLATE_PREFIX=MANTIS-1234

if "%~1"=="" (
  echo Uso: %~nx0 XXXX descricao-kebab-case
  exit /b 1
)

if "%~2"=="" (
  echo Uso: %~nx0 XXXX descricao-kebab-case
  exit /b 1
)

set TICKET=MANTIS-%~1
set SLUG=%~2

set TARGET_DIR=sustentacao\%TICKET%-%SLUG%

echo >> Criando pasta: %TARGET_DIR%
mkdir "%TARGET_DIR%" 2>nul

echo >> Copiando arquivos de docs\%TEMPLATE_PREFIX%-* para %TARGET_DIR%

for %%F in (docs\%TEMPLATE_PREFIX%-*) do (
  set BASE=%%~nxF
  set NEWNAME=!BASE:%TEMPLATE_PREFIX%=%TICKET%!
  echo    - !BASE!  ^>  !NEWNAME!
  copy "%%F" "%TARGET_DIR%\!NEWNAME!" >nul
)

echo >> Concluido.
echo Pasta criada: %TARGET_DIR%

endlocal
