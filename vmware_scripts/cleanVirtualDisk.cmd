del /F/S/Q *.nvram
del /F/S/Q *.vmem
del /F/S/Q *.vmsd
del /F/S/Q *.vmss
del /F/S/Q *.vmxf
del /F/S/Q *.log

del /F/S/Q caches
rmdir /S/Q caches

del /F/S/Q *.WRITELOCK

del /F/S/Q *.lck
for /D %%f in (*.lck) do rmdir /S/Q "%%f"