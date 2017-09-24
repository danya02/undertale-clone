0x000000:
    self.timer = (+ self.timer 1s)
    if !(== self.type 0s) goto 0x0000BC
0x00002C:
    call (draw_sprite_ext[]:int32 (var 2s) (var 16777215) (var 0s) (var 2s) (var 2s) (var -60s) (var 0s) (var 0s) (var 0s))
    if !(== self.timer 1s) goto 0x0000BC
0x000098:
    call (caster_play[]:int32 (var 1s) (var 1s) self.noise)
0x0000BC:
    if !(== self.type 1s) goto 0x0001C8
0x0000D0:
    if !(<= self.photo_alpha 1s) goto 0x000104
0x0000E4:
    self.photo_alpha = (+ self.photo_alpha 0.04d)
0x000104:
    call (draw_sprite_ext[]:int32 self.photo_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (var 50s) (var 140s) (var 0s) (var 2467s))
    if !(== self.death 1s) goto 0x0001C8
0x000170:
    call (draw_sprite_ext[]:int32 self.photo_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (var 50s) (var 140s) (var 0s) (var 2468s))
0x0001C8:
    if !(>= self.timer 120s) goto 0x0002D8
0x0001DC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 2s))
    if !(== self.death 1s) goto 0x000230
0x00021C:
    call (draw_set_color[]:int32 (var 255s))
0x000230:
    if !(== self.type 0s) goto 0x000284
0x000244:
    call (draw_text_transformed[]:int32 (var 0s) (var 4s) (var 5s) (var "THE END") (var 260s) (var 205s))
0x000284:
    if !(== self.type 1s) goto 0x0002D8
0x000298:
    call (draw_text_transformed[]:int32 (var 0s) (var 4s) (var 5s) (var "THE END") (var 300s) (var 205s))
0x0002D8:
    if !(>= self.timer 200s) goto 0x000300
0x0002EC:
    push (== self.dogamt 0s)
    goto 0x000304
0x000300:
    push 0s
0x000304:
    if !pop goto 0x00039C
0x000308:
    self.dogamt = 1s
    if !(== self.death 0s) goto 0x00035C
0x000328:
    call (caster_loop[]:int32 (var 0.9d) (var 0.9d) self.song)
0x00035C:
    if !(== self.death 1s) goto 0x00039C
0x000370:
    call (caster_loop[]:int32 (var 0.2d) (var 1s) (var 217s))
0x00039C:
    if !(>= self.timer 220s) goto 0x0003C4
0x0003B0:
    push (== self.death 1s)
    goto 0x0003C8
0x0003C4:
    push 0s
0x0003C8:
    if !pop goto 0x0003D8
0x0003CC:
    self.timer = 210s
0x0003D8:
    if !(>= self.timer 1320s) goto 0x000400
0x0003EC:
    push (< self.dogamt 2s)
    goto 0x000404
0x000400:
    push 0s
0x000404:
    if !pop goto 0x000518
0x000408:
    self.dogamt = 2s
    self.dog = (instance_create[]:int32 (var 1363s) (var 380s) (var 640s))
    push -4s
    stog.depth* = (int32 self.dog)
    if !(== self.type 1s) goto 0x000480
0x000468:
    push 420s
    stog.y* = (int32 self.dog)
0x000480:
    push 0.2d
    stog.image_speed* = (int32 self.dog)
    push 1s
    stog.visible* = (int32 self.dog)
    push 1520s
    stog.sprite_index* = (int32 self.dog)
    push -1s
    stog.hspeed* = (int32 self.dog)
    push 2s
    stog.image_xscale* = (int32 self.dog)
    push 2s
    stog.image_yscale* = (int32 self.dog)
0x000518:
    if !(>= self.timer 1668s) goto 0x000540
0x00052C:
    push (< self.dogamt 3s)
    goto 0x000544
0x000540:
    push 0s
0x000544:
    if !pop goto 0x0005A4
0x000548:
    self.dogamt = 3s
    push 0s
    stog.hspeed* = (int32 self.dog)
    push 1523s
    stog.sprite_index* = (int32 self.dog)
    push 0.05d
    stog.image_speed* = (int32 self.dog)
0x0005A4:
    if !(>= self.timer 3686s) goto 0x0005CC
0x0005B8:
    push (< self.dogamt 4s)
    goto 0x0005D0
0x0005CC:
    push 0s
0x0005D0:
    if !pop goto 0x000620
0x0005D4:
    self.dogamt = 4s
    push 85s
    stog.sprite_index* = (int32 self.dog)
    stog.y* = (+ (int32 self.dog):y 8s)
0x000620:
    exit
