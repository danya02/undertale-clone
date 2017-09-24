0x000000:
    if !(== self.falling 0s) goto 0x000200
0x000014:
    if !(== self.bonk 1s) goto 0x000050
0x000028:
    self.hspeed = 0s
    self.vspeed = 0s
    self.bonk = 0s
    goto 0x000200
0x000050:
    if !(== 1569.left 1s) goto 0x0000C4
0x000064:
    if !(> self.hspeed -4s) goto 0x000088
0x000078:
    self.hspeed = -4s
    goto 0x0000C4
0x000088:
    self.hspeed = (- self.hspeed (+ (/ 0.5d self.size) 0.05d))
0x0000C4:
    if !(== 1569.up 1s) goto 0x000138
0x0000D8:
    if !(> self.vspeed -3s) goto 0x0000FC
0x0000EC:
    self.vspeed = -3s
    goto 0x000138
0x0000FC:
    self.vspeed = (- self.vspeed (+ (/ 0.5d self.size) 0.05d))
0x000138:
    if !(== 1569.right 1s) goto 0x000188
0x00014C:
    self.hspeed = (+ self.hspeed (+ (/ 0.6d self.size) 0.05d))
0x000188:
    if !(== 1569.down 1s) goto 0x0001D8
0x00019C:
    self.vspeed = (+ self.vspeed (+ (/ 0.6d self.size) 0.05d))
0x0001D8:
    if !(< self.speed 0.4d) goto 0x0001F4
0x0001F4:
    self.t = 1s
0x000200:
    exit
