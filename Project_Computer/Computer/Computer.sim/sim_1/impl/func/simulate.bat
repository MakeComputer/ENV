@echo off
set xv_path=E:\\Vivado\\Vivado\\2017.1\\bin
call %xv_path%/xsim id_func_impl -key {Post-Implementation:sim_1:Functional:id} -tclbatch id.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
