#!/bin/bash

sudo apt-get update && sudo apt-get install -y iperf screen

sudo apt-get update && sudo apt-get install default-jre
wget -O ReSafetyServer.jar http://mnet.cs.nthu.edu.tw/mnet_old/ReSafetyServer/ReSafetyServer.jar
wget -O Setting http://mnet.cs.nthu.edu.tw/mnet_old/ReSafetyServer/Setting
java -jar ReSafetyServer.jar
