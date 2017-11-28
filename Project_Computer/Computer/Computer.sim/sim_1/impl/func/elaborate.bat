@echo off
set xv_path=E:\\Vivado\\Vivado\\2017.1\\bin
call %xv_path%/xelab  -wto dc5e449bc45641f2b83d8a92d1182b6b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot id_func_impl xil_defaultlib.id -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
