0x000000:
    push -5s
    if (!= 36s:flag 1s) goto 0x000054
0x00001C:
    push -5s
    if (> 202s:flag 15s) goto 0x000054
0x000038:
    push -5s
    push (== 7s:flag 1s)
    goto 0x000058
0x000054:
    push 1s
0x000058:
    if !pop goto 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.talkedto = 0s
0x000098:
    exit
