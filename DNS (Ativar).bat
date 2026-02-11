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

REM Executar comandos diretamente no adaptador Wi-Fi
netsh interface ipv4 set dnsservers name="Wi-Fi" source=static address=94.140.14.14 primary validate=no
netsh interface ipv4 add dnsservers name="Wi-Fi" address=94.140.15.15 index=2 validate=no

netsh interface ipv6 set dnsservers name="Wi-Fi" source=static address="2a10:50c0::ad1:ff" primary validate=no
netsh interface ipv6 add dnsservers name="Wi-Fi" address="2a10:50c0::ad2:ff" index=2 validate=no

REM Adicionar configuração para outros adaptadores (mesma lógica)
REM Adaptador Ethernet
netsh interface ipv4 set dnsservers name="Ethernet" source=static address=94.140.14.14 primary validate=no
netsh interface ipv4 add dnsservers name="Ethernet" address=94.140.15.15 index=2 validate=no

netsh interface ipv6 set dnsservers name="Ethernet" source=static address="2a10:50c0::ad1:ff" primary validate=no
netsh interface ipv6 add dnsservers name="Ethernet" address="2a10:50c0::ad2:ff" index=2 validate=no

REM Adaptador Ethernet 2
netsh interface ipv4 set dnsservers name="Ethernet 2" source=static address=94.140.14.14 primary validate=no
netsh interface ipv4 add dnsservers name="Ethernet 2" address=94.140.15.15 index=2 validate=no

netsh interface ipv6 set dnsservers name="Ethernet 2" source=static address="2a10:50c0::ad1:ff" primary validate=no
netsh interface ipv6 add dnsservers name="Ethernet 2" address="2a10:50c0::ad2:ff" index=2 validate=no

REM Adaptador Wi-Fi 2
netsh interface ipv4 set dnsservers name="Wi-Fi 2" source=static address=94.140.14.14 primary validate=no
netsh interface ipv4 add dnsservers name="Wi-Fi 2" address=94.140.15.15 index=2 validate=no

netsh interface ipv6 set dnsservers name="Wi-Fi 2" source=static address="2a10:50c0::ad1:ff" primary validate=no
netsh interface ipv6 add dnsservers name="Wi-Fi 2" address="2a10:50c0::ad2:ff" index=2 validate=no

REM Adaptador Bluetooth Network Connection
netsh interface ipv4 set dnsservers name="Bluetooth Network Connection" source=static address=94.140.14.14 primary validate=no
netsh interface ipv4 add dnsservers name="Bluetooth Network Connection" address=94.140.15.15 index=2 validate=no

netsh interface ipv6 set dnsservers name="Bluetooth Network Connection" source=static address="2a10:50c0::ad1:ff" primary validate=no
netsh interface ipv6 add dnsservers name="Bluetooth Network Connection" address="2a10:50c0::ad2:ff" index=2 validate=no

REM Adaptador Local Area Connection
netsh interface ipv4 set dnsservers name="Local Area Connection" source=static address=94.140.14.14 primary validate=no
netsh interface ipv4 add dnsservers name="Local Area Connection" address=94.140.15.15 index=2 validate=no

netsh interface ipv6 set dnsservers name="Local Area Connection" source=static address="2a10:50c0::ad1:ff" primary validate=no
netsh interface ipv6 add dnsservers name="Local Area Connection" address="2a10:50c0::ad2:ff" index=2 validate=no

REM Adaptador Local Area Connection* 1 (Wi-Fi Direct)
netsh interface ipv4 set dnsservers name="Local Area Connection* 1" source=static address=94.140.14.14 primary validate=no
netsh interface ipv4 add dnsservers name="Local Area Connection* 1" address=94.140.15.15 index=2 validate=no

netsh interface ipv6 set dnsservers name="Local Area Connection* 1" source=static address="2a10:50c0::ad1:ff" primary validate=no
netsh interface ipv6 add dnsservers name="Local Area Connection* 1" address="2a10:50c0::ad2:ff" index=2 validate=no

:: ==================== Limpar cache DNS ====================
ipconfig /flushdns
