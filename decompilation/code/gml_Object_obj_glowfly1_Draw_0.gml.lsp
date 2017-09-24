0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 0.25d) (var 16777215) (var 0s) (var 1.5d) (var 1.5d) (- self.y 0.5d) (- self.x 0.5d) self.image_index self.sprite_index)
    self.talkcounter = (- self.talkcounter 1s)
    if !(== self.myinteract 1s) goto 0x0000FC
0x0000E8:
    push (< self.talkcounter 0s)
    goto 0x000100
0x0000FC:
    push 0s
0x000100:
    if !pop goto 0x000150
0x000104:
    self.snd = (choose[]:int32 (var 19s) (var 18s))
    call (snd_play[]:int32 self.snd)
    self.talkcounter = 30s
    self.myinteract = 0s
0x000150:
    exit
