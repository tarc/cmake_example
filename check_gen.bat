@echo off
setlocal enabledelayedexpansion


set script_dir=%~dp0

if NOT "%1"=="" (
	set build_dir=%1
) else (
	set build_dir=%script_dir%build\
)

set solution_file_name=cmake_test.sln


if NOT EXIST %build_dir%%solution_file_name% (
	exit /b 1
)


:success
	exit /b 0


:fail
	echo Something wrong during !error_message!
	exit /b 1
