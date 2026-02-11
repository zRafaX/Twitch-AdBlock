@echo off
color 05

NET SESSION >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo [INFO] ...
    echo.
    PowerShell -Command "Start-Process -FilePath '%~f0' -Verb RunAs" -Wait
    EXIT /B
)

REM Adaptador Wi-Fi
netsh interface ipv4 set dnsservers name="Wi-Fi" source=dhcp
netsh interface ipv6 set dnsservers name="Wi-Fi" source=dhcp

REM Adaptador Ethernet
netsh interface ipv4 set dnsservers name="Ethernet" source=dhcp
netsh interface ipv6 set dnsservers name="Ethernet" source=dhcp

REM Adaptador Ethernet 2
netsh interface ipv4 set dnsservers name="Ethernet 2" source=dhcp
netsh interface ipv6 set dnsservers name="Ethernet 2" source=dhcp

REM Adaptador Wi-Fi 2
netsh interface ipv4 set dnsservers name="Wi-Fi 2" source=dhcp
netsh interface ipv6 set dnsservers name="Wi-Fi 2" source=dhcp

REM Adaptador Bluetooth Network Connection
netsh interface ipv4 set dnsservers name="Bluetooth Network Connection" source=dhcp
netsh interface ipv6 set dnsservers name="Bluetooth Network Connection" source=dhcp

REM Adaptador Local Area Connection
netsh interface ipv4 set dnsservers name="Local Area Connection" source=dhcp
netsh interface ipv6 set dnsservers name="Local Area Connection" source=dhcp

REM Adaptador Local Area Connection* 1 (Wi-Fi Direct)
netsh interface ipv4 set dnsservers name="Local Area Connection* 1" source=dhcp
netsh interface ipv6 set dnsservers name="Local Area Connection* 1" source=dhcp

:: ==================== Limpar cache DNS ====================
ipconfig /flushdns
