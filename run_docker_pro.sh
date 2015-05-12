docker run -d \
-h "xsk_redmine_pro" \
-p 2812:2812 \
-p 80:80 \
-p 5432:5432 \
--volumes-from redmine_data \
docker.io/xsidekick/xsk_redmine:latest \
/usr/bin/monit -I