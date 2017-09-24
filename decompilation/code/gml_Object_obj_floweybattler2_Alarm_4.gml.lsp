0x000000:
    if !(== self.on 0s) goto 0x000058
0x000014:
    if !(== self.heartdraw 1s) goto 0x000058
0x000028:
    self.heartdraw = 0s
    self.on = 1s
    self.clap = (+ self.clap 1s)
0x000058:
    stog.alarm[4s] = 4s
0x00006C:
    exit
