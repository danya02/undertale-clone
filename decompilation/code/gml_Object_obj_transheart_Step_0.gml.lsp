0x000000:
    if !(< (abs[]:int32 (- self.x self.mychoicex)) self.speed) goto 0x000058
0x00002C:
    push (< (abs[]:int32 (- self.y self.mychoicey)) self.speed)
    goto 0x00005C
0x000058:
    push 0s
0x00005C:
    if !pop goto 0x00008C
0x000060:
    self.x = self.mychoicex
    self.y = self.mychoicey
    self.speed = 0s
0x00008C:
    exit
