docker run --rm -it \
-h "xsk_redmine_dev" \
-p 2812:2812 \
-p 80:80 \
-p 5432:5432 \
--volumes-from redmine_data \
docker.io/xsidekick/xsk_redmine:latest \
/bin/bash
