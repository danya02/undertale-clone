0x000000:
    if !(!= global.mnfight 2s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    push self.x
    if (> -5s (- 1s:idealborder 20s)) goto 0x000068
0x000048:
    push self.x
    push (< -5s 0s:idealborder)
    goto 0x00006C
0x000068:
    push 1s
0x00006C:
    if !pop goto 0x000094
0x000070:
    self.x = self.xprevious
    self.hspeed = (- self.hspeed)
0x000094:
    exit
