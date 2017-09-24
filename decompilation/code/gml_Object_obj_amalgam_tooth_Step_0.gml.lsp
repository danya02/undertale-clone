0x000000:
    if !(== self.con 2s) goto 0x000038
0x000014:
    self.vspeed = 0s
    self.anchor = 1s
    self.con = 3s
0x000038:
    if !(== self.anchor 1s) goto 0x0000B0
0x00004C:
    if !(== self.top 1s) goto 0x000078
0x000060:
    push -5s
    self.y = 2s:idealborder
0x000078:
    if !(== self.top 0s) goto 0x0000B0
0x00008C:
    push -5s
    self.y = (- 3s:idealborder self.sprite_height)
0x0000B0:
    if !(== self.con 11s) goto 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    exit
