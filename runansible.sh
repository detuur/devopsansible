#### my own stuff starts here

# link the folder properly
ln -s /vagrant/ansible ~/ansible
cd ansible

# get ssh working a bit better
ssh-keyscan lb web1 web2 >> ~/.ssh/known_hosts
ssh-keygen -t rsa -b 2048 -N ''

# deploy ssh keys
ansible-playbook setup.yml
ansible-playbook sites.yml