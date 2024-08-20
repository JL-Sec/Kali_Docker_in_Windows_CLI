# Kali in Windows CMD - Setup Guide

This guide explains how to set up Docker container management scripts in both PowerShell and `cmd`. These scripts allow you to easily start or attach to your Kali Docker container using simple commands like `kali`.

# PowerShell Setup:

- Open your PowerShell profile (notepad $PROFILE).Add the kali function script to manage Docker containers.
- Save and reload the profile (. $PROFILE).
- Run kali in PowerShell to start or attach to the container.

# cmd Setup:

- Create kali.bat and docker_aliases.bat scripts.
- Use doskey in docker_aliases.bat to set up a kali alias.
- Add docker_aliases.bat to the Windows AutoRun registry key.

Navigate to HKEY_CURRENT_USER\Software\Microsoft\Command Processor.
Right-click in the right pane and select New > String Value. Name it AutoRun.
Set the value of AutoRun to the path of your docker_aliases.bat file:

C:\Users\JLSec\mypath\docker_aliases.bat

- Run kali in cmd to manage the container.
