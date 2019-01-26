title Defragmenting virtual disk ...

set TARGET_DISK=%1

cd

set DISK_MGR="C:\Program Files (x86)\VMware\VMware Virtual Disk Development Kit\bin\vmware-vdiskmanager"

%DISK_MGR% -d %TARGET_DISK%

REM pause

