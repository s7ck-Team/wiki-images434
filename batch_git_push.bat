@echo off
for /l %%i in (%2, 1, %3) do (
cd %1
git clone git@github.com:s7ck-Team/wiki-images%%i.git
cd ..\wiki-images%%i
for /f "tokens=* delims= " %%a in ('dir /a /b') do (move %%a %1\wiki-images%%i)
cd %1\wiki-images%%i
rd %1\..\wiki-images%%i
git add . 
git commit -m update
git push -u origin main)
