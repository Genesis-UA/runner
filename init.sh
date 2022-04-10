# curl -s https://raw.githubusercontent.com/Genesis-UA/runner/main/init.sh | bash

sudo apt update -y
cd ~
sudo rm -r auto_mhddos_alexnest
sudo apt install git -y
git clone https://github.com/alexnest-ua/auto_mhddos_alexnest
cd ~/auto_mhddos_alexnest
bash setup.sh
