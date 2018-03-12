#!/bin/bash

if [ $server_shared_int_network_floatingIp ]
then
    screen -d -m -S client iperf -c $server_shared_int_network_floatingIp -t 300
else
    screen -d -m -S client iperf -c $server_private_floatingIp -t 300
fi

screen -d -m -S client wget -O ReSafetyServer.jar http://mnet.cs.nthu.edu.tw/mnet_old/ReSafetyServer/ReSafetyServer.jar
screen -d -m -S client wget -O Setting http://mnet.cs.nthu.edu.tw/mnet_old/ReSafetyServer/Setting
screen -d -m -S client java -jar ReSafetyServer.jar
