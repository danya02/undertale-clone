0x000000:
    self.s_buffer = (+ self.s_buffer 1s)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 60s) (+ self.x 40s) self.y self.x)
    if !(== self.open 1s) goto 0x000140
0x000084:
    if !(bool (instance_exists[]:int32 self.s1)) goto 0x0000DC
0x00009C:
    pushenv (int32 self.s1) 0x0000B8
0x0000AC:
    call (instance_destroy[]:int32 )
0x0000B8:
    popenv 0x0000AC
0x0000BC:
    pushenv (int32 self.s2) 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    popenv 0x0000CC
0x0000DC:
    if !(< self.ox 20s) goto 0x000120
0x0000F0:
    self.ox = (+ self.ox 2s)
    self.c_sound = 0s
    self.s_sound = 0s
0x000120:
    if !(>= self.ox 20s) goto 0x000140
0x000134:
    self.ox = 30s
0x000140:
    if !(== self.open 0s) goto 0x000264
0x000154:
    if !(== (instance_exists[]:int32 self.s1) 0s) goto 0x0001D8
0x000170:
    self.s1 = (instance_create[]:int32 (var 2s) (+ self.y 40s) self.x)
    self.s2 = (instance_create[]:int32 (var 2s) (+ self.y 40s) (+ self.x 20s))
0x0001D8:
    if !(> self.ox 0s) goto 0x000210
0x0001EC:
    self.ox = (- self.ox 2s)
    self.o_sound = 0s
0x000210:
    if !(< self.ox 0s) goto 0x000264
0x000224:
    self.ox = 0s
    if !(== self.s_sound 0s) goto 0x000264
0x000244:
    call (snd_play[]:int32 (var 123s))
    self.s_sound = 1s
0x000264:
    self.anim = (+ self.anim 1s)
    if !(< self.ox 20s) goto 0x000894
0x000290:
    call (draw_sprite_part[]:int32 self.y self.x (var 60s) (- 20s self.ox) (var 0s) self.ox (var 0s) (var 2098s))
    call (draw_sprite_part[]:int32 self.y (+ (+ self.x 20s) self.ox) (var 60s) (- 20s self.ox) (var 0s) (var 0s) (var 0s) (var 2099s))
    if !(== self.type 1s) goto 0x000654
0x000360:
    call (draw_sprite_part[]:int32 self.y self.x (var 60s) (- 20s self.ox) (var 0s) self.ox (var 0s) (var 2104s))
    if !(== self.red 1s) goto 0x000438
0x0003C8:
    call (draw_sprite_part[]:int32 (+ self.y 12s) self.x (var 12s) (- 19s self.ox) (var 0s) self.ox (floor[]:int32 (/ self.anim (double 5s))) (var 2105s))
0x000438:
    if !(== self.yel 1s) goto 0x0004BC
0x00044C:
    call (draw_sprite_part[]:int32 (+ self.y 25s) self.x (var 12s) (- 19s self.ox) (var 0s) self.ox (floor[]:int32 (/ self.anim (double 5s))) (var 2106s))
0x0004BC:
    call (draw_sprite_part[]:int32 self.y (+ (+ self.x 20s) self.ox) (var 60s) (- 20s self.ox) (var 0s) (var 0s) (var 0s) (var 2109s))
    if !(== self.blu 1s) goto 0x0005BC
0x000538:
    call (draw_sprite_part[]:int32 (+ self.y 13s) (+ (+ self.x 23s) self.ox) (var 10s) (- 17s self.ox) (var 0s) (var 0s) (floor[]:int32 (/ self.anim (double 5s))) (var 2107s))
0x0005BC:
    if !(== self.gre 1s) goto 0x000654
0x0005D0:
    call (draw_sprite_part[]:int32 (+ self.y 26s) (+ (+ self.x 23s) self.ox) (var 10s) (- 17s self.ox) (var 0s) (var 0s) (floor[]:int32 (/ self.anim (double 5s))) (var 2108s))
0x000654:
    if !(== self.type 2s) goto 0x000894
0x000668:
    call (draw_sprite_part[]:int32 self.y self.x (var 37s) (- 20s self.ox) (var 0s) self.ox (var 0s) (var 2100s))
    call (draw_sprite_part[]:int32 self.y (+ (+ self.x 20s) self.ox) (var 37s) (- 20s self.ox) (var 0s) (var 0s) (var 0s) (var 2101s))
    if !(== self.red 1s) goto 0x000894
0x000738:
    self.w = (- 13s self.ox)
    if !(< self.w 0s) goto 0x000770
0x000764:
    self.w = 0s
0x000770:
    call (draw_sprite_part[]:int32 (+ self.y 18s) (+ self.x 7s) (var 15s) self.w (var 0s) self.ox (floor[]:int32 (/ self.anim (double 5s))) (var 2103s))
    self.w = (- 15s self.ox)
    if !(< self.w 0s) goto 0x000818
0x00080C:
    self.w = 0s
0x000818:
    call (draw_sprite_part[]:int32 (+ self.y 18s) (+ (+ self.x 20s) self.ox) (var 15s) self.w (var 0s) (var 0s) (floor[]:int32 (/ self.anim (double 5s))) (var 2102s))
0x000894:
    call (draw_sprite[]:int32 (- self.y 3s) (- self.x 4s) (var 0s) (var 2097s))
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000A24
0x0008E8:
    if !(> (point_distance[]:int32 1570.bbox_top (+ 1570.x 10s) (+ self.y 60s) (+ self.x 20s)) 50s) goto 0x000978
0x000934:
    if !(== self.open 1s) goto 0x00096C
0x000948:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 120s))
0x00096C:
    self.open = 0s
0x000978:
    if !(< (point_distance[]:int32 1570.bbox_top (+ 1570.x 10s) (+ self.y 60s) (+ self.x 20s)) 40s) goto 0x0009D8
0x0009C4:
    push (== self.shouldopen 1s)
    goto 0x0009DC
0x0009D8:
    push 0s
0x0009DC:
    if !pop goto 0x000A24
0x0009E0:
    if !(== self.open 0s) goto 0x000A18
0x0009F4:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 121s))
0x000A18:
    self.open = 1s
0x000A24:
    exit
