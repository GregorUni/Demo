Auf dem Slave_Pi muss sowohl Grafana als auch Telegraf in Kombination mit influxdb
installiert sein. Am besten nutzt man den bereits konfigurierten Slave Pi.
Es wurde die Grafana Version 6.7 verwendet.

Um eine Verbindung aufbauen zu können mit den anderen Geräten muss das Skript Interfaces ausgeführt werden.
Anschließend startet man Grafana in dem man in dem Ordner "~/grafana-6.7.0/bin" ./grafana-server ausführt.
Grafana kann dann im Browser aufgerufen werden unter der Adresse http://localhost:3000/ 
Username: admin
PW:123qwe

Dann auf das Dashboard: "Iperf3 Bandwith gehen"
Falls auf den Hardkerneln jeweils das Skript "bridge.sh" ausgeführt wurde, kann nun die Demo im Master_Pi
gestartet werden.
