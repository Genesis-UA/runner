# curl -s https://raw.githubusercontent.com/Genesis-UA/runner/main/init.sh | bash

#Just in case kill previous copy of mhddos_proxy
sudo pkill -f runner.sh
sudo pkill -f runner.py
sudo pkill -f ./start.py

cd ~
sudo rm -r runner
sudo apt update -y
sudo apt upgrade -y
sudo apt install wget -y
sudo apt upgrade wget -y
sudo apt install python3 -y
sudo apt upgrade python3 -y
sudo apt install python3-pip -y
sudo apt upgrade python3-pip -y
sudo apt install screen -y
sudo apt upgrade screen -y
#sudo apt install curl -y
#sudo apt upgrade curl -y
sudo -H pip3 install --upgrade pip
sudo apt install git -y
git clone https://github.com/Genesis-UA/runner
cd ~/runner
bash runner.sh
