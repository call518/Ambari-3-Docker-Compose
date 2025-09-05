#!/bin/bash
set -e

cd ./scripts

SCRIPTS="
setup-ambari-repo.sh
setup-hostname.sh
setup.sh
install-ambari-server.sh
install-ambari-agent.sh
"

for script in $SCRIPTS
do
	echo
	echo "===================================================================================="
	echo "============================ $script"
	echo "===================================================================================="
	/bin/bash $script
done
