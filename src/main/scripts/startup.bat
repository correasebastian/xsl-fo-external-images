@ECHO OFF
:: Check Windows version, abort if not NT 4 or later
IF NOT "%OS%"=="Windows_NT" GOTO Syntax
SETLOCAL ENABLEDELAYEDEXPANSION

:Syntax
ECHO.
ECHO --------------------------------------------------------------------------------
ECHO startup.bat,  Version 1.0 for Windows NT 4 / 2000 / XP / Server 2003 / Windows 7 / 8 / 10
ECHO Prints PDF vouchers from the command line
ECHO --------------------------------------------------------------------------------
ECHO.
ECHO Usage:  java -jar try-1.0-SNAPSHOT.jar
ECHO.
ECHO.
ECHO Notes:  1. Extract the contents of try-1.0-SNAPSHOT-bin.zip into a folder 
ECHO         2. Change directory into the try-1.0-SNAPSHOT folder:
ECHO			cd try-1.0-SNAPSHOT
ECHO         3. Execute the jar file: 
ECHO    		java -jar try-1.0-SNAPSHOT.jar
ECHO.
ECHO         4. For printing vouchers from csv file (Active rewards voucher), 
ECHO            In the current directory, create a csv file boost_juice_vouchers.csv of following format : 
ECHO 		Barcode,      ExpiryDate,   VerificationCode
ECHO 		780672318863, 01/01/2017,   346456
ECHO 		565774675865, 25/12/2016,   65768
ECHO --------------------------------------------------------------------------------
ECHO Written by Sandesh Gandhi
ECHO Contact: sandugandhi@gmail.com
ECHO --------------------------------------------------------------------------------

:End
IF "%OS%"=="Windows_NT" ENDLOCAL