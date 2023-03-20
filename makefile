ping:
	ansible all -i inventory.ini -m ping --vault-password-file vault-password

install:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook playbook/prepare.yml -i inventory.ini --vault-password-file vault-password

deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault-password
	ansible-playbook playbook/ssl.yml -i inventory.ini --vault-password-file vault-password

prepare-vault:
ifneq ($(wildcard vault-password),)
	$(error vault-password file is alreadt exist)
else
	echo "${PASSWORD}" > vault-password
endif

edit-vault:
	ansible-vault edit --vault-password-file vault-password group_vars/webservers/vault.yml