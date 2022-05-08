#!/usr/bin/python3

import re
import subprocess
import yubico
import time
def check_if_exists(x, ls):
    if x in ls:
        #print(str(x) + ' is inside the list')
        return True
    else:
        #print(str(x) + ' is not present in the list')
        return False
        
while True:
    time.sleep(3)
    boolean = False
    substring = "Yubi"

    device_re = re.compile(b"Bus\s+(?P<bus>\d+)\s+Device\s+(?P<device>\d+).+ID\s(?P<id>\w+:\w+)\s(?P<tag>.+)$", re.I)
    df = subprocess.check_output("lsusb")
    devices = []
    for i in df.split(b'\n'):
        if i:
            info = device_re.match(i)
            boolean = check_if_exists(b'Yubi', info[4])
            if boolean == True:
                print(yubico.find_yubikey())
                subprocess.call(['sudo gnome-terminal -e \"bash -c \'sudo python3 /home/test1/test.py;$SHELL\'\"'], shell=True)
                time.sleep(30)
