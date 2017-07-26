# look for ansible, then install ansible if not installed
sudo ./install_ansible.sh
# use ansible
ansible-playbook -i inventory.ini main.yml --ask-become-pass --extra-vars "skip_dotfiles=false"