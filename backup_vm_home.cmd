@echo off
    set VM_DIR=%1
    set ROOT_DIR=%2
    set TARGET_DIR=%3
    set TEMP_ZIP_DIR=%4
    set BACKUP_LOG=__backup_log.txt

    echo Backing up %VM_DIR% > %BACKUP_LOG%

    echo Current size of %VM_DIR% is
    du -sh %ROOT_DIR%\%VM_DIR%
	
    cd /d %ROOT_DIR%\%VM_DIR%
    call ..\vmware_scripts\cleanVirtualDisk.cmd

    cd /d %ROOT_DIR%\
    echo 
    echo -----------------------------------
    echo  Start Time:
    echo  Start Time: > %BACKUP_LOG%
    TIME /t
    TIME /t > %BACKUP_LOG%	
    echo -----------------------------------
    echo %ZIP% %TARGET_DIR%\%VM_DIR%.zip %VM_DIR% -w%TEMP_ZIP_DIR%

    REM zip DIR with no compression "store" mode only (-mx0)
    %ZIP% -mx0 %TARGET_DIR%\%VM_DIR%.zip %VM_DIR% -w%TEMP_ZIP_DIR%
    echo 
    echo -----------------------------------
    echo  End Time:
    echo  End Time: > %BACKUP_LOG%
    TIME /t
    TIME /t > %BACKUP_LOG%	
    echo -----------------------------------


REM ******************************
REM *  Return to Root Dir
REM ******************************
    cd /d %TARGET_DIR%