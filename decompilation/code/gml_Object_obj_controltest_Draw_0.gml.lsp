0x000000:
    self.z_index = 0s
    self.x_index = 0s
    self.c_index = 0s
    self.buffer = (- self.buffer 1s)
    if !(< self.buffer 0s) goto 0x000354
0x000050:
    if !(bool (keyboard_multicheck[]:int32 (var 0s))) goto 0x000078
0x000068:
    self.z_index = 2s
    goto 0x000098
0x000078:
    if !(== self.z_index 1s) goto 0x000098
0x00008C:
    self.z_index = 3s
0x000098:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00010C
0x0000B0:
    if !(== self.fun 1s) goto 0x000100
0x0000C4:
    self.image_index = (+ self.image_index 1s)
    call (caster_play[]:int32 (var 1s) (var 1s) self.s_snare)
0x000100:
    self.z_index = 1s
0x00010C:
    if !(bool (keyboard_multicheck[]:int32 (var 1s))) goto 0x000134
0x000124:
    self.x_index = 2s
    goto 0x000154
0x000134:
    if !(== self.x_index 1s) goto 0x000154
0x000148:
    self.x_index = 3s
0x000154:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 1s))) goto 0x0001C8
0x00016C:
    if !(== self.fun 1s) goto 0x0001BC
0x000180:
    self.image_index = (+ self.image_index 1s)
    call (caster_play[]:int32 (var 1s) (var 1s) self.s_kick)
0x0001BC:
    self.x_index = 1s
0x0001C8:
    if !(bool (keyboard_multicheck[]:int32 (var 2s))) goto 0x0001F0
0x0001E0:
    self.c_index = 2s
    goto 0x000210
0x0001F0:
    if !(== self.c_index 1s) goto 0x000210
0x000204:
    self.c_index = 3s
0x000210:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 2s))) goto 0x000284
0x000228:
    if !(== self.fun 1s) goto 0x000278
0x00023C:
    self.image_index = (+ self.image_index 1s)
    call (caster_play[]:int32 (var 1s) (var 1s) self.s_cymbal)
0x000278:
    self.c_index = 1s
0x000284:
    if !(bool (keyboard_check_pressed[]:int32 (var 82s))) goto 0x0002EC
0x00029C:
    if !(== self.fun 1s) goto 0x0002EC
0x0002B0:
    self.image_index = (+ self.image_index 1s)
    call (caster_play[]:int32 (var 1s) (var 1s) self.s_cuica)
0x0002EC:
    if !(bool (keyboard_check_pressed[]:int32 (var 69s))) goto 0x000354
0x000304:
    if !(== self.fun 1s) goto 0x000354
0x000318:
    self.image_index = (+ self.image_index 1s)
    call (caster_play[]:int32 (var 1s) (var 1s) self.s_cuica2)
0x000354:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var 30s) (var 80s) self.z_index (var 846s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var 30s) (var 140s) self.x_index (var 847s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (var 30s) (var 200s) self.c_index (var 848s))
    if !(== self.fun 1s) goto 0x0004A0
0x000470:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    goto 0x000634
0x0004A0:
    call (draw_set_color[]:int32 (var 32768))
    call (draw_circle[]:int32 (var 1s) (var 16s) (+ self.y 16s) (+ self.x 16s))
    call (draw_circle[]:int32 (var 1s) (var 14s) (+ self.y 16s) (+ self.x 16s))
    call (draw_circle[]:int32 (var 1s) (var 12s) (+ self.y 16s) (+ self.x 16s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_circle[]:int32 (var 1s) (var 17s) (+ self.y 16s) (+ self.x 16s))
    call (draw_circle[]:int32 (var 1s) (var 15s) (+ self.y 16s) (+ self.x 16s))
    call (draw_circle[]:int32 (var 1s) (var 13s) (+ self.y 16s) (+ self.x 16s))
0x000634:
    call (draw_set_color[]:int32 (var 16777215))
    self.i = 0s
    if !(< self.i 6s) goto 0x0006E0
0x00066C:
    call (draw_rectangle[]:int32 (var 1s) (var 300s) (+ self.borderr self.i) (- self.borderu self.i) (- self.borderl self.i))
    self.i = (+ self.i 1s)
    goto 0x000658
0x0006E0:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000710
0x0006F8:
    self.x = (- self.x 3s)
0x000710:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x000740
0x000728:
    self.x = (+ self.x 3s)
0x000740:
    if !(bool (keyboard_check[]:int32 (var 40s))) goto 0x000770
0x000758:
    self.y = (+ self.y 3s)
0x000770:
    if !(bool (keyboard_check[]:int32 (var 38s))) goto 0x0007A0
0x000788:
    self.y = (- self.y 3s)
0x0007A0:
    if !(<= self.x self.borderl) goto 0x0007C8
0x0007B8:
    self.x = self.borderl
0x0007C8:
    if !(>= self.x (- self.borderr 32s)) goto 0x000800
0x0007E8:
    self.x = (- self.borderr 32s)
0x000800:
    if !(<= self.y self.borderu) goto 0x000828
0x000818:
    self.y = self.borderu
0x000828:
    if !(>= self.y 240s) goto 0x000850
0x00083C:
    call (room_goto[]:int32 (var 288s))
0x000850:
    exit
