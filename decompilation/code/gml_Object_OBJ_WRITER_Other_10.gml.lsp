0x000000:
    if !(== self.halt 1s) goto 0x0000B8
0x000014:
    self.myletter = " "
    self.stringpos = 1s
    self.stringno = (+ self.stringno 1s)
    push -1s
    self.originalstring = (int32 self.stringno):mystring
    self.myx = self.writingx
    self.myy = self.writingy
    self.lineno = 0s
    self.halt = 0s
    stog.alarm[0s] = self.textspeed
0x0000B8:
    if !(== self.halt 2s) goto 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    if !(== self.halt 4s) goto 0x000124
0x0000EC:
    global.myfight = 0s
    global.mnfight = 1s
    call (keyboard_clear[]:int32 (var 13s))
    call (instance_destroy[]:int32 )
0x000124:
    exit
