# look for ansible, then install ansible if not installed
sudo ./install_ansible.sh
# use ansible
ansible-playbook -i inventory.ini --ask-become-pass --extra-vars "skip_dotfiles=false" main.yml
ansible-playbook -i inventory.ini --ask-become-pass --extra-vars "skip_docker_machine=false" install_docker.yml