# docker-apache-xdebug-vscode-minimal
Minimal initial setup for debugging with Xdebug and VSCode inside Apache Webserver container

## Running
Just run `./sync_user_inside_container.sh` to make sure current user has rights to htdocs. You can use provided launch.json to debug.
Provided script sets UID and GID of `www-data` user inside container to the same as user running the script, so you shouldn't have any problems
regarding permissions of files.

## Running in different networks / on different platform (eg. Docker Desktop for Windows)
You might need to change address ip at the end of dockerfile corresponding to address on which your XDebug client
exists (172.17.0.1 is default host server on default bridge network on Linux)
