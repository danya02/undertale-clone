0x000000:
    self.fakeyoff = (+ self.fakeyoff (int32 self.op):yadd)
    if !(> self.fakeyoff (int32 self.op):yspace) goto 0x000070
0x00004C:
    self.fakeyoff = 0s
    self.fakeyamt = (+ self.fakeyamt 1s)
0x000070:
    self.y = (+ (+ self.fakey self.fakeyoff) (* self.fakeyamt (int32 self.op):yspace))
    if !(> self.y 400s) goto 0x0000D0
0x0000C4:
    call (instance_destroy[]:int32 )
0x0000D0:
    if !(> self.hspeed 0s) goto 0x000104
0x0000E4:
    push (> self.x (- 760.x 6s))
    goto 0x000108
0x000104:
    push 0s
0x000108:
    if !pop goto 0x00013C
0x00010C:
    self.x = (- self.x self.hspeed)
    self.hspeed = (- self.hspeed)
0x00013C:
    if !(< self.hspeed 0s) goto 0x000170
0x000150:
    push (< self.x (+ 758.x 6s))
    goto 0x000174
0x000170:
    push 0s
0x000174:
    if !pop goto 0x0001A8
0x000178:
    self.x = (- self.x self.hspeed)
    self.hspeed = (- self.hspeed)
0x0001A8:
    exit
