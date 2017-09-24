0x000000:
    self.rew = (+ self.rew 1s)
    if !(== self.rewed 0s) goto 0x000040
0x00002C:
    push (> self.rew 95s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000064
0x000048:
    self.rewed = 1s
    self.vsp = 442.vspeed
0x000064:
    if !(== self.rewed 1s) goto 0x0000D4
0x000078:
    self.vsp = (- self.vsp 0.4d)
    if !(>= self.vsp (- self.maxrw)) goto 0x0000D4
0x0000B4:
    [obj_blackbox_pl].vspeed = self.vsp
    [obj_plusbomb].vspeed = self.vsp
0x0000D4:
    if !(< global.turntimer 1s) goto 0x0000F4
0x0000E8:
    call (instance_destroy[]:int32 )
0x0000F4:
    exit
