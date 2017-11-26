# look for ansible, then install ansible if not installed
./install_ansible.sh
# ansible -i 'localhost,' -c local -m ping all
# sudo chown -R $USER: ~/.ansible
#
# use ansible
ansible-playbook -i inventory.ini --ask-become-pass --extra-vars "skip_dotfiles=false" main.yml
ansible-playbook -i inventory.ini --ask-become-pass --extra-vars "skip_docker_machine=false" install_docker.yml