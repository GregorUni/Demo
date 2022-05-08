sudo modprobe macsec -r
sudo modprobe macsec -v
sudo ifconfig enp3s0 192.168.1.14 netmask 255.255.255.0
sudo ip link add link enp3s0 macsec0 type macsec cipher default
sudo ip macsec add macsec0 tx sa 0 pn 1 on key 02 09876543210987654321098765432109
sudo ip macsec add macsec0 rx address 00:1e:06:45:24:4b port 1
sudo ip macsec add macsec0 rx address 00:1e:06:45:24:4b port 1 sa 0 pn 1 on key 01 12345678901234567890123456789012
sudo ip link set dev macsec0 up
sudo ifconfig macsec0 10.10.12.2/24
sudo ip link set macsec0 type macsec encrypt on
sudo ip link set macsec0 type macsec cipherbit off
sudo ifconfig macsec0 mtu 1464
##################################
sudo tc qdisc replace dev enp3s0 root pfifo_fast
sudo tc qdisc replace dev macsec0 root pfifo_fast
