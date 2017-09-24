0x000000:
    self.con = 0s
    if (> global.plot 207s) goto 0x00003C
0x000020:
    push -5s
    push (== 7s:flag 1s)
    goto 0x000040
0x00003C:
    push 1s
0x000040:
    if !pop goto 0x000054
0x000044:
    call (instance_destroy[]:int32 )
    goto 0x0000FC
0x000054:
    if !(== global.plot 207s) goto 0x0000AC
0x000068:
    self.y = -100s
    self.con = 50s
    self.asg = (instance_create[]:int32 (var 1322s) (var 120s) (var 580s))
    goto 0x0000FC
0x0000AC:
    self.asg = (instance_create[]:int32 (var 1322s) (var 120s) (var 180s))
    push (int32 self.asg):dtsprite
    stog.sprite_index* = (int32 self.asg)
0x0000FC:
    self.image_xscale = 3s
0x000108:
    exit
