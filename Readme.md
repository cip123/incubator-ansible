in order to run the playbooks
export ANSIBLE_SCP_IF_SSH=y
ansible_playbook setup.yml -i production.yml --ask-pass
ansible_playbook deploy.yml -i production.yml
