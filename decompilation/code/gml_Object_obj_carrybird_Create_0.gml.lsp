0x000000:
    self.myinteract = 0s
    self.facing = 0s
    self.direction = 270s
    self.talkedto = 0s
    self.image_speed = 0.1d
    self.carry = 0s
    self.sinoid = 0s
    self.clamp_r = 0s
    self.right = 0s
    push -5s
    if !(== 7s:flag 0s) goto 0x0000AC
0x000090:
    self.birdsong = (caster_load[]:int32 (var "music/birdsong.ogg"))
0x0000AC:
    if !(== global.entrance 20s) goto 0x0000D4
0x0000C0:
    push (> global.plot 115s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000F4
0x0000DC:
    self.x = 100s
    self.right = 1s
0x0000F4:
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x000124
0x000108:
    push -5s
    push (== 27s:flag 0s)
    goto 0x000128
0x000124:
    push 0s
0x000128:
    if !pop goto 0x000138
0x00012C:
    self.y = 900s
0x000138:
    exit
