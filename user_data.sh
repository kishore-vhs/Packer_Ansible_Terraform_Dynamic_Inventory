#!/bin/bash

# Ensure PasswordAuthentication is set to yes in sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd
