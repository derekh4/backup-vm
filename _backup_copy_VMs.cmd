call _backup_setVars.cmd
robocopy.exe  /MIR /R:1 /W:10 %VMware_Archive_Dir% N:\personal\derek\_BackUp\VirtualMachines

REM pause
