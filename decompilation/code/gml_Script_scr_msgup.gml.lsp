0x000000:
    global.msc = (+ global.msc 1s)
    self.stringno = 0s
    self.stringpos = 1s
    self.lineno = 0s
    self.writingx = (round[]:int32 self.writingx)
    self.writingy = (round[]:int32 self.writingy)
    self.myx = self.writingx
    self.myy = self.writingy
    call (script_execute[]:int32 global.msc (var 1s))
    self.n = 0s
    push -5s
    if !(!= (int32 self.n):msg "%%%") goto 0x000128
0x0000DC:
    push -5s
    stog.mystring[(int32 self.n)] = (int32 self.n):msg
    self.n = (+ self.n 1s)
    goto 0x0000B4
0x000128:
    push -1s
    self.originalstring = 0s:mystring
    self.halt = 0s
    stog.alarm[0s] = self.textspeed
0x000164:
    exit
