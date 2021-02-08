# Dockerfile 
FROM quay.io/ansible/molecule:3.1.5
RUN python3 -m pip install molecule-kubevirt && ansible-galaxy collection install community.crypto  community.kubernetes
# Need to copy twice the source code : once for the test, once for the code we test 
COPY molecule /molecule
COPY . /molecule/default/roles/geerlingguy.nginx
