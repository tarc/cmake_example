@echo off
setlocal enabledelayedexpansion


if NOT "%1"=="" (
	set build_type=%1
) else (
	set build_type=Debug
)


set script_dir=%~dp0

set build_dir=%script_dir%build\

call %script_dir%check_gen.bat %build_dir%

if errorlevel 1 (
	set error_message=call %script_dir%gen.bat %build_type%

	!error_message!
	if NOT '!ERRORLEVEL!'=='0' goto fail
)


set error_message=cmake --build . --config %build_type% --target run
cd %build_dir%
!error_message!
if NOT '!ERRORLEVEL!'=='0' goto fail


:success
	exit /b 0


:fail
	echo Something wrong during !error_message!
	exit /b 1
