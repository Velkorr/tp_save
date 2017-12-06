#!/bin/sh
#Pour Jeto
ZEDATE=`date +%Y-%m-%d_%H-%M-%S`

mkdir -p /srv/testSYNC/INC/${ZEDATE}/

/usr/bin/rsync -av --stats --delete --ignore-errors --backup \
	--backup-dir=/srv/testSYNC/INC/${ZEDATE}/ \
	/srv/FreeNas/ \
	/srv/testSYNC/BACK/

