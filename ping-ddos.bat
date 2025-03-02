@echo off
setlocal enabledelayedexpansion

:: 设置目标地址列表
set "targets=1.1.1.1"

:: 设置每个目标的 ping 次数
set "count=114514114514114514"

echo ----------------------------
echo Mass Ping Utility
echo ----------------------------
echo.

:: 遍历目标地址并执行 ping
for %%t in (%targets%) do (
    echo Pinging %%t ...
    ping -n %count% %%t | findstr /i "TTL=" || echo Unable to reach %%t
    echo.
)

echo ----------------------------
echo Ping Test Completed
echo ----------------------------
pause