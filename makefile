.PHONE: ping check-syntax install

check-syntax:
	ansible-playbook --syntax-check install.yml

ping:
	ansible aws -m ping

install:
	ansible-playbook install.yml

verify:
	ansible-playbook install.yml -t verify
