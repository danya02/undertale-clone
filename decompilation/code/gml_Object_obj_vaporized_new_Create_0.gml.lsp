0x000000:
    self.ht = 208s
    self.wd = 200s
    self.myvapor = 0s
    self.myread = 0s
    self.finishedreading = 0s
    self.line = 0s
    call (scr_newvapordata[]:int32 (var 0s))
    if !(== self.myvapor 0s) goto 0x000084
0x000070:
    call (snd_play[]:int32 (var 91s))
0x000084:
    self.fun = 8s
    self.spec = 0s
0x00009C:
    exit
