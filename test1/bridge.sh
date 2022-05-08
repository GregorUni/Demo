sudo ip link set br0 down
sudo brctl delbr br0
sudo brctl addbr br0
sudo brctl addif br0 enp2s0
echo hi
sudo bash macsecup.sh
echo hi2
sudo brctl addif br0 macsec0
sudo ifconfig macsec0 0
sudo ifconfig br0 10.10.12.2
sudo ifconfig br0 mtu 1500
sudo ifconfig macsec0 mtu 1600
sudo ifconfig enp3s0 0
sudo route add -host 10.10.12.1 dev br0
#sudo route add -host 192.168.1.10 dev enp3s0
#sudo route add -host 192.168.0.12 dev enp2s0
sudo route add -host 192.168.2.12 dev br0
#sudo route add -host 192.168.0.13 dev br0
sudo ip route add 192.168.0.0/24 via 10.10.12.1 dev br0

#sudo wpa_supplicant -Dwext -iwlxd0374587a195 -cwpa_supplicant.conf -B
#sudo ifconfig wlxd0374587a195 10.10.0.2
