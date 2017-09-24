0x000000:
    if !(== self.bonk 1s) goto 0x00003C
0x000014:
    self.hspeed = 0s
    self.vspeed = 0s
    self.bonk = 0s
    goto 0x00017C
0x00003C:
    if !(== 1569.left 1s) goto 0x00008C
0x000050:
    self.hspeed = (- self.hspeed (+ (/ 0.6d self.size) 0.05d))
0x00008C:
    if !(== 1569.up 1s) goto 0x0000DC
0x0000A0:
    self.vspeed = (- self.vspeed (+ (/ 0.6d self.size) 0.05d))
0x0000DC:
    if !(== 1569.right 1s) goto 0x00012C
0x0000F0:
    self.hspeed = (+ self.hspeed (+ (/ 0.6d self.size) 0.05d))
0x00012C:
    if !(== 1569.down 1s) goto 0x00017C
0x000140:
    self.vspeed = (+ self.vspeed (+ (/ 0.6d self.size) 0.05d))
0x00017C:
    other.x = other.xprevious
    other.y = other.yprevious
0x00019C:
    exit
