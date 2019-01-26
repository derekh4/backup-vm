@echo off
    set VM_DIR=%1
    set ROOT_DIR=%2
    set TARGET_DIR=%3
    set TEMP_ZIP_DIR=%4


    cd /d %ROOT_DIR%\%VM_DIR%
    call ..\vmware_scripts\cleanVirtualDisk.cmd

    cd /d %ROOT_DIR%\
    echo 
    echo -----------------------------------
    echo  Start Time:
    TIME /t
    echo -----------------------------------
    echo %ZIP% %TARGET_DIR%\%VM_DIR%.zip %VM_DIR% -w%TEMP_ZIP_DIR%
    %ZIP% %TARGET_DIR%\%VM_DIR%.zip %VM_DIR% -w%TEMP_ZIP_DIR%
    echo 
    echo -----------------------------------
    echo  End Time:
    TIME /t
    echo -----------------------------------


REM ******************************
REM *  Return to Root Dir
REM ******************************
    cd /d %TARGET_DIR%