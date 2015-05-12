docker run --rm -it \
-h "xsk_redmine_dev" \
--volumes-from redmine_data \
docker.io/xsidekick/xsk_redmine:latest \
/bin/bash