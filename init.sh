# curl -s https://raw.githubusercontent.com/Genesis-UA/runner/main/init.sh | bash

sudo apt update -y
cd ~
sudo rm -r runner
sudo apt install git -y
git clone https://github.com/Genesis-UA/runner
cd ~/runner
bash setup.sh
