#这个是一个可以发动大规模ping的项目
#请勿使用这个项目干违法的事情
#例如什么Ddos攻击啊，这些万万不可
#声明如果出事了与作者无关
#声明如果出事了与作者无关
#声明如果出事了与作者无关
#重要事情说三遍
#这个是源代码
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
