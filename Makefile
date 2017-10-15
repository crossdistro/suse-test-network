all:
	vagrant up --provision
destroy:
	vagrant destroy --force
reset: destroy all
