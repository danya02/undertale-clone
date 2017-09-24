0x000000:
    call (script_execute[]:int32 global.typer (var 171s))
    self.x = (round[]:int32 self.x)
    self.y = (round[]:int32 self.y)
    self.doak = 0s
    self.stringno = 0s
    self.stringpos = 1s
    self.lineno = 0s
    self.halt = 0s
    self.writingx = (round[]:int32 self.writingx)
    self.writingy = (round[]:int32 self.writingy)
    self.myx = self.writingx
    self.myy = self.writingy
    self.n = 0s
    push -5s
    if !(!= (int32 self.n):msg "%%%") goto 0x000158
0x00010C:
    push -5s
    stog.mystring[(int32 self.n)] = (int32 self.n):msg
    self.n = (+ self.n 1s)
    goto 0x0000E4
0x000158:
    push -1s
    self.originalstring = 0s:mystring
    self.dfy = 0s
    stog.alarm[0s] = self.textspeed
0x000194:
    exit
