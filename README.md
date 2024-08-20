# Kali in Windows CMD and PowerShell

These scripts allow you to easily start or attach to your Kali Docker container from the Windows CLI using simple commands like `kali`.

## Prerequisites

- **Docker Desktop** installed and configured with WSL 2 or Hyper-V.
- **Docker image** (`kalitools:v1`) or equivalent available on your system.

# PowerShell Setup:

- Open your PowerShell profile (notepad $PROFILE).Add the kali function script to manage Docker containers.
- Save and reload the profile (. $PROFILE).
- Run kali in PowerShell to start or attach to the container.

# CMD Setup:

- Create kali.bat and docker_aliases.bat scripts.
- Use doskey in docker_aliases.bat to set up a kali alias.
- Add docker_aliases.bat to the Windows AutoRun registry key.

Navigate to HKEY_CURRENT_USER\Software\Microsoft\Command Processor.
Right-click in the right pane and select New > String Value. Name it AutoRun.
Set the value of AutoRun to the path of your docker_aliases.bat file:

C:\Users\JLSec\mypath\docker_aliases.bat

- Run kali in cmd to manage the container.
