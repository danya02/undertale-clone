0x000000:
    if !(== other.stop 1s) goto 0x000028
0x000014:
    push (== self.stop 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00006C
0x000030:
    self.y = (- self.y 5s)
    self.stop = 1s
    self.speed = 0s
    self.gravity = 0s
0x00006C:
    exit
