# curl -s https://raw.githubusercontent.com/Genesis-UA/runner/main/init.sh | bash

#Just in case kill previous copy of mhddos_proxy
sudo pkill -f runner.sh
sudo pkill -f runner.py

cd ~
sudo apt update -y
sudo apt install --upgrade git -y
sudo apt install --upgrade python3 -y
sudo apt install --upgrade python3-pip -y
sudo -H pip3 install --upgrade pip
sudo apt install --upgrade screen -y
sudo rm -r mhddos_proxy
ulimit -n 1048576
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git
cd ~/mhddos_proxy
sudo python3 -m pip install -r requirements.txt
