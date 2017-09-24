0x000000:
    self.siner = (+ self.siner 1s)
    if !(== self.pause 1s) goto 0x000080
0x00002C:
    push -1s
    stog.alarm[(+ 0s:alarm 1s)] = 0s
    self.siner = 0s
    self.x = (+ (int32 self.parent):x 60s)
0x000080:
    self.anim_e = (+ self.anim_e 1s)
    if !(> self.anim_e 30s) goto 0x0000C0
0x0000AC:
    push (< self.anim_e 60s)
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if !pop goto 0x0000E0
0x0000C8:
    self.anim_e2 = (+ self.anim_e2 1s)
0x0000E0:
    if !(> self.anim_e 180s) goto 0x00010C
0x0000F4:
    self.anim_e2 = 0s
    self.anim_e = 0s
0x00010C:
    self.anim_l = (+ self.anim_l 1s)
    if !(>= self.anim_l 60s) goto 0x00014C
0x000138:
    push (< self.anim_l 120s)
    goto 0x000150
0x00014C:
    push 0s
0x000150:
    if !pop goto 0x000174
0x000154:
    self.anim_l2 = (- self.anim_l2 0.5d)
0x000174:
    if !(>= self.anim_l 150s) goto 0x00019C
0x000188:
    push (< self.anim_l 300s)
    goto 0x0001A0
0x00019C:
    push 0s
0x0001A0:
    if !pop goto 0x0001E8
0x0001A4:
    self.anim_l2 = (+ self.anim_l2 6s)
    if !(>= self.anim_l2 0s) goto 0x0001E8
0x0001D0:
    self.anim_l2 = 0s
    self.anim_l = 300s
0x0001E8:
    if !(>= self.anim_l 300s) goto 0x00026C
0x0001FC:
    if !(== self.anim_l2 0s) goto 0x00022C
0x000210:
    self.anim_l3 = 0s
    self.anim_l2 = -3s
    goto 0x00026C
0x00022C:
    self.anim_l2 = 0s
    if !(== self.anim_l3 0s) goto 0x00026C
0x00024C:
    self.anim_l3 = (choose[]:int32 (var 1s) (var -1s))
0x00026C:
    if !(> self.anim_l 310s) goto 0x0002A4
0x000280:
    self.anim_l3 = 0s
    self.anim_l2 = 0s
    self.anim_l = 0s
0x0002A4:
    self.anim_h = (+ self.anim_h 1s)
    if !(> self.anim_h 50s) goto 0x0002E4
0x0002D0:
    push (< self.anim_h 75s)
    goto 0x0002E8
0x0002E4:
    push 0s
0x0002E8:
    if !pop goto 0x000304
0x0002EC:
    self.anim_h2 = (+ self.anim_h2 1s)
0x000304:
    if !(> self.anim_h 100s) goto 0x000324
0x000318:
    self.anim_h = 0s
0x000324:
    self.anim_m = (+ self.anim_m 1s)
    if !(> self.anim_m 150s) goto 0x000364
0x000350:
    push (< self.anim_m 180s)
    goto 0x000368
0x000364:
    push 0s
0x000368:
    if !pop goto 0x000384
0x00036C:
    self.anim_m2 = (+ self.anim_m2 1s)
0x000384:
    if !(> self.anim_m 240s) goto 0x0003AC
0x000398:
    push (< self.anim_m 270s)
    goto 0x0003B0
0x0003AC:
    push 0s
0x0003B0:
    if !pop goto 0x0003CC
0x0003B4:
    self.anim_m2 = (+ self.anim_m2 1s)
0x0003CC:
    if !(> self.anim_m 300s) goto 0x0003F8
0x0003E0:
    self.anim_m = 0s
    self.anim_m2 = 0s
0x0003F8:
    if !(== self.pause 0s) goto 0x000664
0x00040C:
    if !(== self.asleep 0s) goto 0x0004D4
0x000420:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 70s) (+ (+ (+ self.offx self.x) 94s) (* (sin[]:int32 (/ self.siner (double 10s))) 6s)) (/ self.anim_e2 (double 3s)) (var 457s))
0x0004D4:
    if !(== self.asleep 1s) goto 0x00059C
0x0004E8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 70s) (+ (+ (+ self.offx self.x) 94s) (* (sin[]:int32 (/ self.siner (double 10s))) 6s)) (/ self.anim_e2 (double 3s)) (var 458s))
0x00059C:
    if !(== self.asleep 2s) goto 0x000664
0x0005B0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 70s) (+ (+ (+ self.offx self.x) 94s) (* (sin[]:int32 (/ self.siner (double 10s))) 6s)) (/ self.anim_e2 (double 3s)) (var 459s))
0x000664:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.offy self.y) (+ self.offx self.x) (var 0s) (var 467s))
    if !(== self.pause 0s) goto 0x000820
0x0006E8:
    if !(!= self.asleep 2s) goto 0x000788
0x0006FC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 2s) (+ (+ self.offx self.x) 70s) (/ self.anim_h2 (double 4s)) (var 460s))
0x000788:
    if !(== self.asleep 2s) goto 0x00081C
0x00079C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 2s) (+ (+ self.offx self.x) 70s) (var 0s) (var 460s))
0x00081C:
    goto 0x0008A0
0x000820:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 2s) (+ (+ self.offx self.x) 70s) (var 0s) (var 461s))
0x0008A0:
    if !(== self.pause 0s) goto 0x000A98
0x0008B4:
    if !(== self.asleep 0s) goto 0x000954
0x0008C8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 84s) (+ (+ self.offx self.x) 98s) (/ self.anim_m2 (double 6s)) (var 462s))
0x000954:
    if !(== self.asleep 1s) goto 0x0009F4
0x000968:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 84s) (+ (+ self.offx self.x) 98s) (/ self.anim_m2 (double 6s)) (var 464s))
0x0009F4:
    if !(== self.asleep 2s) goto 0x000A94
0x000A08:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 84s) (+ (+ self.offx self.x) 98s) (/ self.anim_m2 (double 6s)) (var 465s))
0x000A94:
    goto 0x000B18
0x000A98:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 84s) (+ (+ self.offx self.x) 98s) (var 0s) (var 463s))
0x000B18:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) 96s) (+ (+ self.offx self.x) 64s) (/ self.siner (double 5s)) (var 466s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.offy self.y) self.anim_l2) (+ (+ self.offx self.x) self.anim_l3) (var 0s) (var 456s))
0x000C2C:
    exit
