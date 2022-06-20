# docker-apache-xdebug-vscode-minimal
Minimal initial setup for debugging with Xdebug and VSCode inside Apache Webserver container

## Running
Just run `docker compose up` (or `podman-compose up`) to start developing. You can use provided launch.json to debug.
You probably want to use rootless docker or preferably
podman to develop, as it won't create uid conflicts.

## Running in different networks / on different platform (eg. Docker Desktop for Windows)
You might need to change address ip at the end of dockerfile corresponding to address on which your XDebug client
exists (172.17.0.1 is default host server on default bridge network on Linux)
