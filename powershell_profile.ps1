function kali {
    # Check if the container exists
    $containerExists = docker ps -a --filter "name=my_kali_container" --format "{{.Names}}"
    
    if (-not $containerExists) {
        Write-Host "Container not found, creating and starting a new one..."
        docker run -it --name my_kali_container -v C:\Users\My\Shared\Folder\:/mnt/kali_share kalitools:v1
    } else {
        # Check if the container is running
        $containerStatus = docker inspect -f '{{.State.Running}}' my_kali_container
        if ($containerStatus -eq "false") {
            Write-Host "Container exists but is stopped, starting it..."
            docker start my_kali_container
            docker attach my_kali_container
        } elseif ($containerStatus -eq "true") {
            Write-Host "Container is already running, attaching to it..."
            docker attach my_kali_container
        } else {
            Write-Host "Unable to determine the container status."
        }
    }
}
