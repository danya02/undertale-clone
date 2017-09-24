0x000000:
    if !(== self.falling 999s) goto 0x000084
0x000014:
    self.x = self.xprevious
    self.y = self.yprevious
    self.hspeed = 0s
    self.vspeed = 0s
    self.bonk = 1s
    pushenv 1014s 0x000074
0x000060:
    stog.alarm[0s] = 10s
0x000074:
    popenv 0x000060
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    exit
