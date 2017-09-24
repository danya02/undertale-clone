0x000000:
    stog.alarm[0s] = 12s
    if !(== self.zap 1s) goto 0x00003C
0x000028:
    push (== (scr_insideborder[]:int32 ) 1s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x0000E4
0x000044:
    self.cross = (instance_create[]:int32 (var 364s) (+ self.y 12s) (+ self.x 12s))
    push self.dmg
    stog.dmg* = (int32 self.cross)
    self.pop = 155s
    if !(> self.pop 1s) goto 0x0000E4
0x0000B8:
    push 1s
    stog.speed* = (int32 self.cross)
    stog.alarm[0s] = 20s
0x0000E4:
    exit
