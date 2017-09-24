0x000000:
    if !(== other.fade 0s) goto 0x00007C
0x000014:
    pushenv -2s 0x000028
0x00001C:
    self.fade = 1s
0x000028:
    popenv 0x00001C
0x00002C:
    pushenv -2s 0x000040
0x000034:
    self.speed = -6s
0x000040:
    popenv 0x000034
0x000044:
    pushenv -2s 0x000060
0x00004C:
    self.friction = 0.1d
0x000060:
    popenv 0x00004C
0x000064:
    pushenv 1675s 0x000078
0x00006C:
    self.ting_s = 1s
0x000078:
    popenv 0x00006C
0x00007C:
    self.fade = 1s
0x000088:
    exit
