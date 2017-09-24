0x000000:
    self.g2 = (instance_create[]:int32 (var 729s) self.y self.x)
    push self.image_blend
    stog.image_blend* = (int32 self.g2)
    if !(== self.crit 1s) goto 0x00006C
0x000058:
    call (snd_play[]:int32 (var 117s))
0x00006C:
    self.shotno = (+ self.shotno 1s)
    if !(< self.shotno 3s) goto 0x0000AC
0x000098:
    stog.alarm[4s] = 3s
0x0000AC:
    exit
