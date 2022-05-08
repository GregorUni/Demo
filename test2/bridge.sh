sudo ifconfig br0 down
sudo brctl delbr br0
sudo bash macsecup.sh
sudo brctl addbr br0
sudo brctl addif br0 macsec0
sudo brctl addif br0 enp2s0
sudo ifconfig macsec0 0
sudo ifconfig enp2s0 0
sudo ifconfig br0 10.10.12.1
sudo ifconfig br0 mtu 1500
sudo ifconfig macsec0 mtu 1600
sudo ifconfig enp3s0 0
sudo route add -host 192.168.0.13 dev br0
#sudo route add -host 10.10.12.2 dev br0
sudo route add -host 10.10.12.2 dev br0
#sudo route add -host 192.168.1.14 dev enp3s0
sudo ip route add 192.168.2.0/24 via 10.10.12.2 dev br0

#sudo wpa_supplicant -Dwext -iwlxd0374579b8a5 -c /etc/wpa_supplicant/wpa_supplicant.conf -B
#sudo ifconfig wlxd0374579b8a5 10.10.0.1
