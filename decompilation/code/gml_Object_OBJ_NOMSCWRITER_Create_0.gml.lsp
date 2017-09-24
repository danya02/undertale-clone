0x000000:
    call (SCR_TEXTTYPE[]:int32 global.typer)
    self.stringno = 0s
    self.stringpos = 1s
    self.lineno = 0s
    self.halt = 0s
    self.myx = self.writingx
    self.myy = self.writingy
    self.n = 0s
    push -5s
    if !(!= (int32 self.n):msg "%%%") goto 0x0000E4
0x000098:
    push -5s
    stog.mystring[(int32 self.n)] = (int32 self.n):msg
    self.n = (+ self.n 1s)
    goto 0x000070
0x0000E4:
    push -1s
    self.originalstring = 0s:mystring
    self.dfy = 0s
    call (action_set_alarm[]:int32 (var 0s) self.textspeed)
0x000124:
    exit
