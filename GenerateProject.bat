@echo off
echo Generating Project...

:: Change the path to the script root
cd /D "%~dp0"
Tools\premake5.exe vs2022 --file="Tools\premake.lua"

echo Project generated.