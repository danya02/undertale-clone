0x000000:
    call (SCR_TEXTTYPE[]:int32 global.typer)
    self.stringno = 0s
    self.stringpos = 1s
    self.lineno = 0s
    self.halt = 0s
    self.myx = self.writingx
    self.myy = self.writingy
    self.x = (round[]:int32 self.x)
    self.y = (round[]:int32 self.y)
    call (script_execute[]:int32 global.msc (var 1s))
    self.n = 0s
    push -5s
    if !(!= (int32 self.n):msg "%%%") goto 0x000130
0x0000E4:
    push -5s
    stog.mystring[(int32 self.n)] = (int32 self.n):msg
    self.n = (+ self.n 1s)
    goto 0x0000BC
0x000130:
    push -1s
    self.originalstring = 0s:mystring
    self.dfy = 0s
    self.stringpos = (string_length[]:int32 self.originalstring)
0x00016C:
    exit
