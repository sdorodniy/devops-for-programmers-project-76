ping:
	ansible all -i inventory.ini -m ping

prepare:
	ansible-playbook playbook/prepare.yml -i inventory.ini