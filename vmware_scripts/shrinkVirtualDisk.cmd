title Shrinking virtual disk ...

set TARGET_DISK=%1
set MOUNT_PATH=W:
cd

set DISK_MOUNT="C:\Program Files (x86)\VMware\VMware Virtual Disk Development Kit\bin\vmware-mount"
set DISK_MGR="C:\Program Files (x86)\VMware\VMware Virtual Disk Development Kit\bin\vmware-vdiskmanager"

REM ******************************************************
REM *  Mounting disk
REM ******************************************************
%DISK_MOUNT% %MOUNT_PATH% %TARGET_DISK%

REM ******************************************************
REM *  Prepare mounted disk for shinking
REM ******************************************************
%DISK_MGR% -p %MOUNT_PATH%

REM ******************************************************
REM *  Unmounting disk
REM ******************************************************
%DISK_MOUNT% /d /f %MOUNT_PATH%

REM ******************************************************
REM *  Shrinking disk
REM ******************************************************
%DISK_MGR% -k %TARGET_DISK%


REM pause

