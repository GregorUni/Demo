#!/usr/bin/python3
import subprocess


A_UPPERCASE = ord('A')
ALPHABET_SIZE = 26

def int32(val):
    return c_int32(val).value

def base_alphabet_to_10(letters):
    """Convert an alphabet number to its decimal representation"""

    return sum(
            (ord(letter) - A_UPPERCASE + 1) * ALPHABET_SIZE**i
            for i, letter in enumerate(reversed(letters.upper()))
    )

otp = input("Press Yubikey to configurate MACsec Interface \n")
base10_otp = base_alphabet_to_10(otp)
base10_otp=str(base10_otp)
print("Key inserted")
s1 = slice(0,32)
#s2 = slice(len(str(base10_otp))//2, len(str(base10_otp)))
s1=int(base10_otp[s1])

subprocess.check_call("sudo bash /home/test1/MACsecInstallation/Installation/PrototypeMACsec/macsecup1.sh", shell=True)
print("Configuration finished")
