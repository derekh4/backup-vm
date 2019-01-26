

set OLD_DISK=%1
set NEW_DISK=%2

title Splitting virtual disk %OLD_DISK% and creating %NEW_DISK% ...

cd

set DISK_MGR="C:\Program Files (x86)\VMware\VMware Virtual Disk Development Kit\bin\vmware-vdiskmanager"

%DISK_MGR% -r %OLD_DISK% -t 1 %NEW_DISK%

pause

@echo off
REM *************************** Usage *****************

REM  Run this command to convert the monolithic virtual disk to a split virtual disk:

REM  vmware-vdiskmanager.exe -r <filepath of original disk> -t 1 <filepath of new disk>

REM  where

REM      -r introduces the original/source disk, which you must supply in full, including the name
REM      -t introduces the new/target disk, which you must supply in full, including a new name
REM       1 refers to the virtual disk type

REM  Note: There are several available disk types:

REM      0: A growable virtual disk contained in a single file (called "monolithic sparse").
REM      1: A growable virtual disk split into 2GB files (called "split sparse").
REM      2: A preallocated virtual disk contained in a single file (called "monolithic flat").
REM      3: A preallocated virtual disk split into 2GB files (called "split flat").
