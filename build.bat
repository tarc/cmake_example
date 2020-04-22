@echo off
setlocal enabledelayedexpansion


set error_message=where cmake > NUL 2> NUL
!error_message!
if NOT '!ERRORLEVEL!'=='0' goto fail


if NOT "%1"=="" (
	set build_type=%1
) else (
	set build_type=Debug
)


set script_dir=%~dp0

set build_dir=%script_dir%build\

set solution_file_name=gwmonitor.sln

if NOT EXIST %build_dir%%solution_file_name% (
	set error_message=call %script_dir%gen.bat %build_type%

	!error_message!
	if NOT '!ERRORLEVEL!'=='0' goto fail
)


cd %build_dir%
set error_message=cmake --build . --config %build_type% -- /m
!error_message!
if NOT '!ERRORLEVEL!'=='0' goto fail


:success
	exit /b 0


:fail
	echo Something wrong during !error_message!
	exit /b 1
