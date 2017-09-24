0x000000:
    if !(> (scr_monstersum[]:int32 ) 1s) goto 0x000080
0x000014:
    push (var 1s)
    call (draw_sprite_ext[]:int32 (var 16777215) (var 0s) (var 1s) (var 1s) self.y -5s (+ 1s:idealborder self.sprite_width) self.image_index self.sprite_index)
0x000080:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var -1s) self.y self.x self.image_index self.sprite_index)
    if !(< global.turntimer 1s) goto 0x000110
0x0000EC:
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000110:
    exit
