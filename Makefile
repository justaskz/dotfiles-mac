help:
	@ echo 'make backup or make install'

backup:
	@ bash backuper run

install:
	@ bash installer run

update_hosts_file:
	@ bash recipes/hosts.sh install
