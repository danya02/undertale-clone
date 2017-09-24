0x000000:
    self.image_yscale = 6s
    self.active = 0s
    stog.flag[200s] = 205s
    push -5s
    if !(< 396s:flag 5s) goto 0x000064
0x000048:
    push -5s
    push (> 11s:tempvalue 0s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x000080
0x00006C:
    stog.flag[396s] = 5s
0x000080:
    push -5s
    self.con = 396s:flag
    push self.x
    self.x = (+ -5s (* 396s:flag 90s))
    self.pausewait = 0s
    self.pausewaittime = 0s
    if !(> global.plot 164s) goto 0x000100
0x0000F0:
    call (instance_destroy[]:int32 )
    exit
0x000100:
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00012C
0x000120:
    self.murder = 1s
0x00012C:
    exit
