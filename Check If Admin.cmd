@echo off

:: Check to see if script is being run with Administrator privileges
:: Script will exit if not being run as Administrator

:checkForAdmin

	openfiles>nul 2>&1

	if %errorlevel% EQU 0 (

		goto :printMenu

	)

	echo.
	echo.   You are not running as Administrator.
	echo.
	echo.   Please run this from an Elevated Command Prompt
	echo.   Or Right-Click SetOfficeChannel.cmd and Select "Run as Administrator"
	echo.
	echo.   Press any key to exit...

	pause>nul

goto :eof

:printMenu

:: Enter additional code here