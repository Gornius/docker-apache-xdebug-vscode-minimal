#/bin/sh
eval "echo \"$(cat .env.eval)\"" > .env
docker compose up || docker-compose up || podman-compose up
