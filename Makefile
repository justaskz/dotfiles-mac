.PHONY: backup install refresh

help:
	@ echo 'run "make backup" or "make install"'

backup:
	@ bash backup run

install:
	@ bash install run

refresh:
	@ bash refresh run

update_hosts_file:
	@ bash recipes/hosts.sh install
