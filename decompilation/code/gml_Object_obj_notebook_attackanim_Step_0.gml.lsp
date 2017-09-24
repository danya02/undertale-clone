0x000000:
    self.timer = (+ self.timer 1s)
    self.siner = (+ self.siner 1s)
    if !(< self.timer 15s) goto 0x000070
0x000044:
    self.image_xscale = (* (cos[]:int32 (/ self.siner (double 2s))) 2s)
0x000070:
    if !(== self.timer 15s) goto 0x000100
0x000084:
    call (snd_play[]:int32 (var 46s))
    if !(== self.crit 1s) goto 0x0000C0
0x0000AC:
    call (snd_play[]:int32 (var 117s))
0x0000C0:
    self.image_speed = 1s
    self.image_xscale = 0.5d
    self.image_yscale = 0.5d
    self.sprite_index = 750s
0x000100:
    if !(> self.timer 15s) goto 0x0001C4
0x000114:
    self.image_xscale = (+ self.image_xscale 0.5d)
    self.image_yscale = (+ self.image_yscale 0.5d)
    if !(> self.image_xscale 2s) goto 0x000188
0x000168:
    self.image_alpha = (- self.image_alpha 0.2d)
0x000188:
    if !(< self.image_alpha 0.1d) goto 0x0001C4
0x0001A4:
    call (caster_free[]:int32 self.bookspin)
    call (instance_destroy[]:int32 )
0x0001C4:
    exit
