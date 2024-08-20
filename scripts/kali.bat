@echo off

REM Check if the container exists by name
docker inspect my_kali_container >nul 2>&1
IF ERRORLEVEL 1 (
    echo Container not found, creating and starting a new one...
    docker run -it --name my_kali_container -v C:\Users\Your\Shared\Folder:/mnt/kali_share kalitools:v1
) ELSE (
    REM Verify if the container is stopped or running
    docker inspect -f "{{.State.Status}}" my_kali_container | findstr "exited" >nul 2>&1
    IF ERRORLEVEL 0 (
        echo Container exists but is stopped, starting it...
        docker start my_kali_container >nul 2>&1
        docker attach my_kali_container
    ) ELSE (
        echo Container is already running, attaching to it...
        docker attach my_kali_container
    )
)
