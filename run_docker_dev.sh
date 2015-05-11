PROJ=$(pwd)

docker run --rm -it \
-h "xsk_redmine_dev" \
-p 5432:5432 \
--volumes-from redmine_data \
-v $PROJ:/backup \
-v $PROJ/redmine-3.0.3:/opt/redmine \
-v $PROJ/config/postgresql/postgresql-9.4:/etc/rc.d/init.d/postgresql-9.4 \
-v $PROJ/config/nginx/nginx.init.d:/etc/rc.d/init.d/nginx \
-v $PROJ/config/nginx/nginx.conf:/opt/nginx/conf/nginx.conf \
-v $PROJ/config/monit/nginx.conf:/etc/monit.d/nginx.conf \
-v $PROJ/config/monit/postgresql.conf:/etc/monit.d/postgresql.conf \
docker.io/xsidekick/xsk_redmine:latest \
/bin/bash
