0x000000:
    if !(== self.active 1s) goto 0x000A7C
0x000014:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0001B8
0x00002C:
    if !(== self.cn 0s) goto 0x00006C
0x000040:
    if !(== global.interact 0s) goto 0x00006C
0x000054:
    push (> 1570.x self.x)
    goto 0x000070
0x00006C:
    push 0s
0x000070:
    if !pop goto 0x0001B8
0x000074:
    global.interact = 1s
    push 0s
    stog.image_alpha* = (int32 self.undyne)
    self.cn = 0.1d
    self.ou = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.05d
    stog.fadespeed* = (int32 self.ou)
    call (snd_play[]:int32 (var 20s))
    self.ar = (instance_create[]:int32 (var 1363s) (var -220s) (+ self.x 30s))
    push 1s
    stog.visible* = (int32 self.ar)
    push 1449s
    stog.sprite_index* = (int32 self.ar)
    push -90s
    stog.image_angle* = (int32 self.ar)
    push 24s
    stog.vspeed* = (int32 self.ar)
    push -0.3d
    stog.friction* = (int32 self.ar)
0x0001B8:
    if !(== self.cn 0.1d) goto 0x00042C
0x0001D4:
    if !(> (int32 self.ar):y 160s) goto 0x00042C
0x0001F4:
    push 0s
    stog.image_angle* = (int32 self.ar)
    push 1451s
    stog.sprite_index* = (int32 self.ar)
    stog.y* = (+ (int32 self.ar):y (int32 self.ar):vspeed)
    push 0s
    stog.vspeed* = (int32 self.ar)
    call (snd_play[]:int32 (var 21s))
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (scr_shake[]:int32 (var 2s) (var 4s) (var 4s))
    self.cn = 0.2d
    stog.alarm[4s] = 50s
    call (instance_create[]:int32 (var 2s) (var 180s) (var 40s))
    call (instance_create[]:int32 (var 2s) (var 200s) (var 40s))
    call (instance_create[]:int32 (var 2s) (var 220s) (var 40s))
    self.yad = 0s
    push 5s
    if (<= 5s 0) goto 0x000428
0x000388:
    push (int32 self.ar)
    push (int32 self.ar)
    self.ar2 = (instance_create[]:int32 (var 1363s) (- 210s (* self.yad 6s)) (- 50s self.yad))
    push 1s
    stog.visible* = (int32 self.ar2)
    push 1451s
    stog.sprite_index* = (int32 self.ar2)
    self.yad = (+ self.yad 2s)
    if (bool (- pop 1)) goto 0x000388
0x000428:
    push (- pop 1)
    pop
0x00042C:
    if !(== self.cn 1.2d) goto 0x0004F0
0x000448:
    if !(> (int32 self.ar):image_alpha 0.02d) goto 0x0004A0
0x000470:
    stog.image_alpha* = (- (int32 self.ar):image_alpha 0.1d)
0x0004A0:
    push (int32 self.ar)
    push -1s
    if !(> 0s:view_yview 10s) goto 0x0004E4
0x0004BC:
    push -1s
    stog.view_yview[(- 0s:view_yview 5s)] = 0s
    goto 0x0004F0
0x0004E4:
    self.cn = 2s
0x0004F0:
    if !(== self.cn 2s) goto 0x000548
0x000504:
    call (caster_play[]:int32 (var 1s) (var 1s) self.ushock)
    self.cn = 3s
    stog.alarm[4s] = 30s
0x000548:
    if !(== self.cn 3s) goto 0x0005AC
0x00055C:
    if !(< (int32 self.undyne):image_alpha 1s) goto 0x0005AC
0x00057C:
    stog.image_alpha* = (+ (int32 self.undyne):image_alpha 0.05d)
0x0005AC:
    push (int32 self.undyne)
    if !(== self.cn 4s) goto 0x000638
0x0005C0:
    global.currentsong = self.usong
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    global.interact = 0s
    stog.flag[17s] = 1s
    stog.flag[77s] = global.armor
    self.cn = 5s
0x000638:
    if !(== self.cn 5s) goto 0x0006A4
0x00064C:
    push 4s
    stog.vspeed* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    self.cn = 6s
    stog.alarm[4s] = 6s
0x0006A4:
    if !(== self.cn 7s) goto 0x000734
0x0006B8:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.sp = (instance_create[]:int32 (var 1045s) (int32 self.undyne):y (int32 self.undyne):x)
    self.cn = 8s
0x000734:
    if !(> self.cn 7s) goto 0x0007A8
0x000748:
    push (+ (int32 self.undyne):x 24s)
    stog.x* = (int32 self.sp)
    push (+ (int32 self.undyne):y 20s)
    stog.y* = (int32 self.sp)
0x0007A8:
    if !(== self.cn 8s) goto 0x000980
0x0007BC:
    if !(< (int32 self.stk):image_alpha 1s) goto 0x00080C
0x0007DC:
    stog.image_alpha* = (+ (int32 self.stk):image_alpha 0.1d)
0x00080C:
    push (int32 self.stk)
    if !(== self.stopper 1s) goto 0x00084C
0x000820:
    stog.alarm[4s] = -1s
    self.cn = 10s
    self.stopper = 0s
0x00084C:
    if !(> 1570.x (+ (int32 self.undyne):x 80s)) goto 0x00089C
0x000878:
    push (< (int32 self.undyne):x self.room_width)
    goto 0x0008A0
0x00089C:
    push 0s
0x0008A0:
    if !pop goto 0x0008FC
0x0008A4:
    push 3s
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 20s
    self.cn = 9s
0x0008FC:
    if !(< 1570.x (- (int32 self.undyne):x 60s)) goto 0x000980
0x000928:
    push -3s
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 20s
    self.cn = 9s
0x000980:
    if !(== self.cn 10s) goto 0x000A40
0x000994:
    if (> 1570.x (+ (int32 self.undyne):x 80s)) goto 0x0009EC
0x0009C0:
    push (< 1570.x (- (int32 self.undyne):x 60s))
    goto 0x0009F0
0x0009EC:
    push 1s
0x0009F0:
    if !pop goto 0x000A04
0x0009F4:
    self.cn = 8s
    goto 0x000A40
0x000A04:
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    self.cn = 8s
0x000A40:
    if !(== self.cn 9s) goto 0x000A7C
0x000A54:
    push -1s
    if !(<= 4s:alarm 0s) goto 0x000A7C
0x000A70:
    self.cn = 10s
0x000A7C:
    exit
