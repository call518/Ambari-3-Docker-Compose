#!/bin/bash

set -ex

INSTANCES="bigtop-hostname0 bigtop-hostname1 bigtop-hostname2 bigtop-hostname3"

for i in $INSTANCES ; do
	HOSTNAME=$(echo $i |sed s/_/-/g)".demo.local"
	docker compose cp install-ambari-agent-script.sh $i:/root/install-ambari-agent-script.sh
	docker compose exec -it $i /bin/bash /root/install-ambari-agent-script.sh $HOSTNAME
done

