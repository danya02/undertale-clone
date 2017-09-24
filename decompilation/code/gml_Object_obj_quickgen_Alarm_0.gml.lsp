0x000000:
    push (var 673s)
    push -5s
    self.blt = (instance_create[]:int32 (- 2s:idealborder 80s) -5s (+ (+ 0s:idealborder 10s) (random[]:int32 (- (c_borderwidth[]:int32 (var 0s)) 10s))))
    call (snd_play[]:int32 (var 20s))
    push self.dmg
    stog.dmg* = (int32 self.blt)
    stog.alarm[0s] = self.firingspeed
0x0000B4:
    exit
