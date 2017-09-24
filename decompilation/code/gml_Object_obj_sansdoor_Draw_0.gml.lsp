0x000000:
    self.bgalpha = 1414.bgalpha
    call (draw_sprite_ext[]:int32 self.bgalpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    if !(== self.image_index 0s) goto 0x0000E4
0x00007C:
    call (draw_sprite_ext[]:int32 self.bgalpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y 48s) (+ self.x 3s) self.anim (var 1633s))
0x0000E4:
    self.anim = (+ self.anim 0.25d)
    if !(> self.sans 0s) goto 0x00030C
0x000118:
    if !(== self.sans 1s) goto 0x000168
0x00012C:
    if !(< self.sansamt 33s) goto 0x00015C
0x000140:
    self.sansamt = (+ self.sansamt 2s)
    goto 0x000168
0x00015C:
    self.sans = 2s
0x000168:
    if !(== self.sans 2s) goto 0x0001C0
0x00017C:
    stog.alarm[3s] = 50s
    self.sans = 3s
    call (caster_play[]:int32 (var 1s) (var 1s) self.wawa)
0x0001C0:
    if !(== self.sans 4s) goto 0x00021C
0x0001D4:
    if !(> self.sansamt 4s) goto 0x000204
0x0001E8:
    self.sansamt = (- self.sansamt 4s)
    goto 0x00021C
0x000204:
    self.sansamt = 0s
    self.sans = 0s
0x00021C:
    if !(!= self.sans 3s) goto 0x000298
0x000230:
    call (draw_sprite_part[]:int32 (+ self.y 13s) (+ self.x 33s) (var 32s) self.sansamt (var 0s) (- 36s self.sansamt) (var 0s) (var 1352s))
    goto 0x00030C
0x000298:
    call (draw_sprite_part[]:int32 (+ self.y 13s) (+ self.x 33s) (var 32s) self.sansamt (var 0s) (- 36s self.sansamt) (/ self.anim 1.5d) (var 1352s))
0x00030C:
    exit
