0x000000:
    if !(== other.active 0s) goto 0x000020
0x000014:
    other.active = 1s
0x000020:
    exit
