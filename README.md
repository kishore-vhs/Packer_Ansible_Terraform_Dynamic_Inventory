# Packer
- Download Packer from packer.io into /usr/local/bin
- Create packer.json
- Create packer-vars.json
- Install amazon-ebs plugin.
```
packer plugins install github.com/hashicorp/amazon
```
- Validate the json.
```
packer validate -var-file packer-vars.json packer.json
```
- Build the packer image.
```
packer build -var-file packer-vars.json packer.json
```
- Copy pem file example sivamware.pem at Packer_Ansible_Terraform_Dynamic_Inventory
- ### For the first time we have to give yes for hostkey checking, Next time automatically it is taken.
### Execution History
- root@ip-10-0-4-94:~/Packer_Ansible_Terraform_Dynamic_Inventory# history
     1  ls /usr/local/bin/
     2  ansible
     3  sudo apt install -y jq net-tools unzip
     4  ls
     5  ls /usr/local/bin/
     6  sudo apt install -y jq net-tools unzip
     7  cd /usr/local/bin/
     8  wget https://releases.hashicorp.com/terraform/1.7.1/terraform_1.7.1_linux_amd64.zip
     9  wget https://releases.hashicorp.com/packer/1.10.0/packer_1.10.0_linux_amd64.zip
    10  unzip terraform_1.7.1_linux_amd64.zip && rm -rf terraform_1.7.1_linux_amd64.zip
    11  unzip packer_1.10.0_linux_amd64.zip && rm -rf packer_1.10.0_linux_amd64.zip && chmod 777    packer terraform
    12  wget https://github.com/hashicorp/packer-plugin-amazon/releases/download/v1.3.0 packer-plugin-amazon_v1.3.0_x5.0_linux_amd64.zip
    13  unzip packer-plugin-amazon_v1.3.0_x5.0_linux_amd64.zip && rm -rf packer-plugin-amazon_v1    3.0_x5.0_linux_amd64.zip
    14  chmod 777 packer-plugin-amazon_v1.3.0_x5.0_linux_amd64
    15  mv packer-plugin-amazon_v1.3.0_x5.0_linux_amd64 /usr/local/bin/
    16  ls
    17  rm -rf *
    18  ls
    19  wget https://releases.hashicorp.com/terraform/1.7.1/terraform_1.7.1_linux_amd64.zip
    20  wget https://releases.hashicorp.com/packer/1.10.0/packer_1.10.0_linux_amd64.zip
    21  unzip terraform_1.7.1_linux_amd64.zip && rm -rf terraform_1.7.1_linux_amd64.zip
    22  unzip packer_1.10.0_linux_amd64.zip && rm -rf packer_1.10.0_linux_amd64.zip && chmod 777    packer terraform
    23  wget https://github.com/hashicorp/packer-plugin-amazon/releases/download/v1.3.0 packer-plugin-amazon_v1.3.0_x5.0_linux_amd64.zip
    24  unzip packer-plugin-amazon_v1.3.0_x5.0_linux_amd64.zip && rm -rf packer-plugin-amazon_v1    3.0_x5.0_linux_amd64.zip
    25  chmod 777 packer-plugin-amazon_v1.3.0_x5.0_linux_amd64
    26  mv packer-plugin-amazon_v1.3.0_x5.0_linux_amd64 /usr/local/bin/
    27  ls
    28  cd ~
    29  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    30  unzip awscliv2.zip
    31  sudo ./aws/install
    32  rm -rf awscliv2.zip
    33  aws
    34  aws --version
    35  git clone -b dynamic-inventory https://github.com/kishore-vhs   Packer_Ansible_Terraform_Dynamic_Inventory.git
    36  ls
    37  cd Packer_Ansible_Terraform_Dynamic_Inventory/
    38  aws s3 ls
    39  packer validate -var-file packer-vars.json packer.json
    40  packer build -var-file packer-vars.json packer.json
    41  ls
    42  terraform init
    43  terraform fmt && terraform validate && terraform apply
    44  ls
    45  cat inventory_file 
    46  ansible -i inventory_file all -m ping -u ansibleadmin
    47  ls
    48  nano sivamware.pem
    49  chmod 400 sivamware.pem 
    50  ansible -i inventory_file all -m ping -u ansibleadmin
    51  ansible -i inventory_file all -m ping -u ansibleadmin --private-key sivamware.pem 
    52  ansible -i inventory_file all -m ping -u ansibleadmin --private-key sivamware.pem   StrictHostKeyChecking=no
    53  ansible -i inventory_file all -m ping -u ansibleadmin --private-key sivamware.pem 
    54  terraform destroy --auto-approve
    55  history
    56  terraform fmt && terraform validate && terraform apply
    57  cat inventory_file 
    58  history
    59  ansible -i inventory_file all -m ping -u ansibleadmin --private-key sivamware.pem 
    60  terraform destroy --auto-approve
    61  history
    62 ansible-playbook -i inventory_file custom-nginx-clone-node.yml --extra-vars CLOUD1="Hindustan" -u ansibleadmin --private-key sivamware.pem
