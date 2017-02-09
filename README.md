<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-generate-toc again -->
**Table of Contents**

- [Setup a Base Ubuntu System to run Docker Containers](#setup-a-base-ubuntu-system-to-run-docker-containers)

<!-- markdown-toc end -->






Setup a Base Ubuntu System to run Docker Containers
===================================================


  * This code is for a Ubuntu system 
  * Ansible needs to be installed on your dev system
	  * [Install Ansible](http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-apt-ubuntu)
	  *

            edg@edg-base:~$ ansible --version
            		ansible 2.2.1.0
            			config file = /etc/ansible/ansible.cfg
            			configured module search path = Default w/o overrides
  
  * Pull the  setupn code
      * `git clone https://github.com/thinkedg/skc-docker-setup.git`
  * Add your aws ssh key
	  * [add key](https://github.com/thinkedg/skc-docker-setup/tree/master/keys)
	  * this README.md is in the keys directory
	  
  * Add your host(s)
	  * edit hosts.cfg
  * Test your setup
	  

            make ping
                    ansible aws -m ping
                    35.167.40.193 | SUCCESS => {
                        "changed": false, 
                        "ping": "pong"
                     }

  * Setup docker on the instance(s)
	  * ` make install`
	  
  * Verifying the setup
	  * the verify role is run durning the install
	  * to run verify role independently
		  * `make verify`
	  
	  
