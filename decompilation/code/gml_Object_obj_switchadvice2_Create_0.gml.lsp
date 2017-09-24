0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    call (script_execute[]:int32 (var 113s))
    push -5s
    if !(== 6s:flag 1s) goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    exit
