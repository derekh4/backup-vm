
REM **************************************************************
REM   Backup VMs
REM **************************************************************
call _backup_VM_main
call _backup_VM_other

REM **************************************************************
REM   Copy All Files
REM **************************************************************
REM  call _backup_copy_VMs

REM  call _backup_copy_files

echo MUST COPY FILES FROM WITHIN LINUX VM NOW!!!!!!!!!!

pause
