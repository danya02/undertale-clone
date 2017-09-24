0x000000:
    call (SCR_TEXTTYPE[]:int32 global.typer)
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
    call (script_execute[]:int32 global.msc (var 1s))
    self.n = 0s
    push -5s
    if !(!= (int32 self.n):msg "%%%") goto 0x00016C
0x000120:
    push -5s
    stog.mystring[(int32 self.n)] = (int32 self.n):msg
    self.n = (+ self.n 1s)
    goto 0x0000F8
0x00016C:
    push -1s
    self.originalstring = 0s:mystring
    self.dfy = 0s
    stog.alarm[0s] = self.textspeed
0x0001A8:
    exit
