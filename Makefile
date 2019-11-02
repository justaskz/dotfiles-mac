.PHONY: backup install

help:
	@ echo 'run "make backup" or "make install"'

backup:
	@ bash backup run

install:
	@ bash install run

update_hosts_file:
	@ bash recipes/hosts.sh install
