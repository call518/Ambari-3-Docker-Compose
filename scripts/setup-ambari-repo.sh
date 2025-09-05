#!/bin/bash

docker compose cp setup-ambari-repo-script.sh bigtop-hostname0:/root/setup-ambari-repo-script.sh
docker compose exec -it bigtop-hostname0 /bin/bash /root/setup-ambari-repo-script.sh
