@echo off
cd %1
git clone git@github.com:s7ck-Team/wiki-images%2.git
cd ..\wiki-images%2
for /f "tokens=* delims= " %%a in ('dir /a /b') do (move %%a %1\wiki-images%2)
cd %1\wiki-images%2
rd %1\..\wiki-images%2
git add . 
git commit -m update
git push -u origin main
