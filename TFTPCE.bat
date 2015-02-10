@echo off
REM Instructions: Place tftpce.exe on the mips device and run it.
REM Change the board IP here in this file or set an environment variable with the correct board ip

IF "%BOARDIP%"=="" SET BOARDIP=192.168.0.198 

REM Use targetDir+\ without quotes
SET TFPTARGETDIR=Windows\

REM IF "%TFPTARGETDIR%"=="" SET TFPTARGETDIR= 

:again
IF %1=="" goto :err

@echo on

IF NOT %1 == "" TFTP -i %BOARDIP% put %1 "%TFPTARGETDIR%%~n1%~x1"
IF NOT %2 == "" TFTP -i %BOARDIP% put %2 "%TFPTARGETDIR%%~n2%~x2"
IF NOT %3 == "" TFTP -i %BOARDIP% put %3 "%TFPTARGETDIR%%~n3%~x3"
IF NOT %4 == "" TFTP -i %BOARDIP% put %4 "%TFPTARGETDIR%%~n4%~x4"
IF NOT %5 == "" TFTP -i %BOARDIP% put %5 "%TFPTARGETDIR%%~n5%~x5"
IF NOT %6 == "" TFTP -i %BOARDIP% put %6 "%TFPTARGETDIR%%~n6%~x6"
IF NOT %7 == "" TFTP -i %BOARDIP% put %7 "%TFPTARGETDIR%%~n7%~x7"
IF NOT %8 == "" TFTP -i %BOARDIP% put %8 "%TFPTARGETDIR%%~n8%~x8"
IF NOT %9 == "" TFTP -i %BOARDIP% put %9 "%TFPTARGETDIR%%~n9%~x9"

shift
shift
shift
shift
shift
shift
shift
shift
shift
goto again

:err
Pause