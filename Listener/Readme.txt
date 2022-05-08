Funktionsweise:

Um den Yubikey Listener zu starten muss man: "sudo python3 Listener.py" ausführen.
Listener.py checkt periodisch das System, ob ein Yubikey in ein USB-Port registriert wurde.
Sollte ein Yubikey gefunden sein, wird das Python Skript test.py in einer neuen Gnome Shell geöffnet.

WICHTIG: Listener.py und test.py müssen auf das Gerät kopiert werden und dann muss ein Hardlink im Listener.py auf test.py konfiguriert werden!
Die neue Gnome Shell, in der test.py ausgeführt wird, bittet den Nutzer den Yubikey zu drücken. Wenn dies geschehen ist, wird ein MACsec Skript ausgeführt wodurch das MACsec Interface konfiguriert wird.
Hier muss auch wieder ein Hardlink auf das auszuführende MACsec Skript verlinkt werden.

