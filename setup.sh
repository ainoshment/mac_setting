# !/bin/bash

## 1. command line tools
xcode-select --install

## 2. install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

## install ansible
brew install ansible

## clone repo
SETTING_PATH=~/private/mac_setting
git clone https://github.com/ainoshment/mac_setting.git ${SETTING_PATH}

## ansible
cd ${SETTING_PATH}
ansible-playbook -i inventory setup_mac.yml