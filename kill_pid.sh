#!/bin/bash
read -p "Какое преложение убить если нечего(0): " killer
if [[ $killer == 0 ]]; then
	exit;
fi
 
sudo ps aux | grep "$killer" 
read -p "kill_Pid: " pid
if [[ $pid == 0 ]]; then
        exit;
fi
sudo kill -9 $pid

