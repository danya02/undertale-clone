0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0s
    self.talkedto = 0s
    call (scr_depth[]:int32 )
    self.shsh = 0s
    if !(> self.x 340s) goto 0x00007C
0x000068:
    push (< self.x 410s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x000098
0x000084:
    stog.alarm[8s] = 90s
0x000098:
    exit
