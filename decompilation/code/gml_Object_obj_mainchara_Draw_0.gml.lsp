0x000000:
    if !(== self.inwater 0s) goto 0x000068
0x000014:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x000068:
    if !(== self.inwater 1s) goto 0x000178
0x00007C:
    call (draw_sprite_part_ext[]:int32 self.image_alpha (var 16777215) (var 1s) (var 1s) (+ self.y 5s) self.x (- self.sprite_height 5s) self.sprite_width (var 0s) (var 0s) self.image_index self.sprite_index)
    if (== 1570.image_index 1s) goto 0x000124
0x000110:
    push (== 1570.image_index 3s)
    goto 0x000128
0x000124:
    push 1s
0x000128:
    if !pop goto 0x00014C
0x00012C:
    call (snd_play[]:int32 (var 22s))
    self.mp = 0s
0x00014C:
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 1048s))
0x000178:
    if !(== self.room 108s) goto 0x0001E0
0x00018C:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 0s) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x0001E0:
    exit
