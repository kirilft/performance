@echo off
@echo
@echo install Kiri's power plan
powercfg -import "C:\Tod_xD\3 Pc Performance\_Files\_Power Plan\HighestPerformance.pow" 77777777-7777-7777-7777-777777777777
@echo
@echo set Kiri's power plan active
powercfg -SETACTIVE "77777777-7777-7777-7777-777777777777"
@echo
@echo Delete Log files
cd C:/ & del *.log /a /s /q /f
@echo
@echo Disable Hibernate
powercfg -h off
@echo
@echo Disable MemoryCompression
PowerShell "Disable-MMAgent -MemoryCompression"
@echo
@echo Disable HPET
bcdedit /deletevalue useplatformclock
@echo
pause