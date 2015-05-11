PROJ=$(pwd)

docker run --rm -it \
-v $PROJ/redmine-3.0.3:/opt/redmine \
-h "xsk_redmine_dev" \
--volumes-from redmine_data \
docker.io/xsidekick/xsk_redmine:latest \
/bin/bash
