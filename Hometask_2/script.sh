#!/bin/bash
backup=/home/Стільниця/Backups
curdate='date +%Y-%m-%d'
old='find -type f -mtime -1'
if [!-d ${backup}/${curdate}]
then
	mkdir${backup}/${curdate}
	chmod 744 ${backup}/${curdate}
fi
for i in ${old}
do
	cp -r $i ${curdate}
done
