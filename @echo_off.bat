@echo off
REM Set up the kali alias silently
doskey kali="C:\Users\JLSec\KaliDocker\kali.bat" $* >nul 2>&1
