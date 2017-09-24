0x000000:
    if !(== self.movetype 2s) goto 0x000654
0x000014:
    push 1s
    stog.visible* = (int32 self.larm)
    if !(== self.slashno 0s) goto 0x000060
0x000040:
    push (> (int32 self.larm):image_angle -104s)
    goto 0x000064
0x000060:
    push 0s
0x000064:
    if !pop goto 0x000104
0x000068:
    self.facetype = 1s
    stog.image_angle* = (- (int32 self.larm):image_angle 35s)
    stog.x* = (- (int32 self.larm):x 4s)
    stog.y* = (- (int32 self.larm):y 4s)
    self.heady = (- self.heady 2s)
0x000104:
    push (int32 self.larm)
    push (int32 self.larm)
    push (int32 self.larm)
    if !(== self.slashno 0s) goto 0x000138
0x000118:
    push (<= (int32 self.larm):image_angle -104s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x000180
0x000140:
    push -104s
    stog.image_angle* = (int32 self.larm)
    stog.alarm[1s] = 5s
    self.slashno = 0.1d
0x000180:
    if !(== self.slashno 1.1d) goto 0x0001BC
0x00019C:
    self.slashno = 1s
    stog.alarm[1s] = 2s
0x0001BC:
    if !(== self.slashno 1s) goto 0x000224
0x0001D0:
    self.facetype = 0s
    push 4s
    stog.depth* = (int32 self.larm)
    stog.image_angle* = (+ (int32 self.larm):image_angle 73.3333333333333d)
0x000224:
    push (int32 self.larm)
    if !(== self.slashno 2s) goto 0x0003DC
0x000238:
    push (int32 self.larm):xstart
    stog.x* = (int32 self.larm)
    push (int32 self.larm):ystart
    stog.y* = (int32 self.larm)
    push 66s
    stog.image_angle* = (int32 self.larm)
    self.slash = (instance_create[]:int32 (var 1363s) (+ (int32 self.larm):y 20s) (- (int32 self.larm):x 180s))
    push 280s
    stog.sprite_index* = (int32 self.slash)
    push 1s
    stog.visible* = (int32 self.slash)
    push 1s
    stog.image_alpha* = (int32 self.slash)
    self.slash2 = (instance_create[]:int32 (var 1363s) (+ (int32 self.larm):y 20s) (- (int32 self.larm):x 180s))
    push 280s
    stog.sprite_index* = (int32 self.slash2)
    push 1s
    stog.visible* = (int32 self.slash2)
    push 1s
    stog.image_alpha* = (int32 self.slash2)
    self.slashno = 3s
0x0003DC:
    if !(== self.slashno 3s) goto 0x000554
0x0003F0:
    if !(< self.heady 6s) goto 0x00041C
0x000404:
    self.heady = (+ self.heady 3s)
0x00041C:
    stog.image_alpha* = (- (int32 self.slash):image_alpha 0.1d)
    stog.image_alpha* = (- (int32 self.slash2):image_alpha 0.1d)
    stog.y* = (+ (int32 self.slash2):y 24s)
    stog.image_angle* = (+ (int32 self.larm):image_angle 0.5d)
    if !(> (int32 self.larm):image_angle 70s) goto 0x000554
0x0004F4:
    push (int32 self.slash)
    push (int32 self.slash2)
    push (int32 self.slash2)
    push (int32 self.larm)
    pushenv (int32 self.slash) 0x000510
0x000504:
    call (instance_destroy[]:int32 )
0x000510:
    popenv 0x000504
0x000514:
    pushenv (int32 self.slash2) 0x000530
0x000524:
    call (instance_destroy[]:int32 )
0x000530:
    popenv 0x000524
0x000534:
    self.slashno = 4s
    stog.alarm[1s] = 3s
0x000554:
    if !(== self.slashno 5s) goto 0x000654
0x000568:
    if !(> self.heady 0s) goto 0x000594
0x00057C:
    self.heady = (- self.heady 1s)
0x000594:
    stog.image_angle* = (- (int32 self.larm):image_angle 15s)
    if !(<= (int32 self.larm):image_angle 6s) goto 0x000654
0x0005DC:
    push (int32 self.larm)
    self.heady = 0s
    push 7s
    stog.depth* = (int32 self.larm)
    push 0s
    stog.image_angle* = (int32 self.larm)
    self.slashno = 0s
    self.movetype = 0s
    self.arm_v = 0s
    push 0s
    stog.visible* = (int32 self.larm)
0x000654:
    self.siner = (+ self.siner 1.4d)
    if !(== self.pause 1s) goto 0x000694
0x000688:
    self.siner = 0s
0x000694:
    self.s_f = (sin[]:int32 (/ self.siner (double 6s)))
    self.s_f2 = (sin[]:int32 (/ self.siner (double 3s)))
    self.s_f3 = (sin[]:int32 (/ self.siner (double 14s)))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- 70s (* self.s_f 15s)) (var 2s) (var 2s) (+ (+ (+ self.y (* self.s_f 3s)) self.heady) 4s) (+ self.x 85s) (var 0s) (var 308s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 164s) (+ self.x 100s) (var 0s) (var 311s))
    if !(== self.arm_v 0s) goto 0x0008A4
0x000814:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 78s) (* self.s_f 5s)) (+ (+ self.x 64s) (* self.s_f 5s)) (var 0s) (var 312s))
0x0008A4:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ (+ self.y 78s) (* self.s_f 6s)) (* self.s_f2 2s)) (+ (+ self.x 136s) (* self.s_f2 3s)) (var 0s) (var 313s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- (* self.s_f 4s)) (var 2s) (var 2s) (+ (+ self.y 78s) (* self.s_f 4s)) (+ self.x 100s) (var 0s) (var 309s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* self.s_f 2s) (var 2s) (var 2s) (+ (+ self.y 122s) (* self.s_f 2s)) (+ self.x 100s) (var 0s) (var 310s))
    if !(== self.facetype 0s) goto 0x000BC8
0x000A68:
    if !(== self.pause 0s) goto 0x000B18
0x000A7C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ (+ self.y 28s) (* self.s_f 2s)) self.heady) (+ self.x 100s) (floor[]:int32 (/ self.siner (double 3s))) (var 303s))
0x000B18:
    if !(== self.pause 1s) goto 0x000BC8
0x000B2C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ (+ self.y 28s) (* self.s_f 2s)) self.heady) (+ self.x 100s) (floor[]:int32 (/ self.siner (double 3s))) (var 305s))
0x000BC8:
    if !(== self.facetype 1s) goto 0x000C78
0x000BDC:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ (+ self.y 28s) (* self.s_f 2s)) self.heady) (+ self.x 100s) (floor[]:int32 (/ self.siner (double 3s))) (var 306s))
0x000C78:
    if !(== self.facetype 2s) goto 0x000D14
0x000C8C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ (+ self.y 28s) (* self.s_f 2s)) self.heady) (+ self.x 100s) global.faceemotion (var 304s))
0x000D14:
    if !(!= self.facetype 0s) goto 0x000D34
0x000D28:
    self.eyetimer = 0s
0x000D34:
    self.eyetimer = (+ self.eyetimer 1s)
    if !(>= self.eyetimer 10s) goto 0x000E64
0x000D60:
    call (draw_sprite_ext[]:int32 (- 1.5d (/ (- self.eyetimer 10s) (double 20s))) (var 16777215) (- (* self.s_f3 32s)) (- 2.5d (/ (- self.eyetimer 10s) (double 20s))) (/ (- self.eyetimer 10s) (double 4s)) (+ (+ self.y 24s) (* self.s_f 2s)) (+ self.x 110s) (var 0s) (var 302s))
    if !(>= self.eyetimer 40s) goto 0x000E64
0x000E58:
    self.eyetimer = 0s
0x000E64:
    if !(== self.movetype 2s) goto 0x000E84
0x000E78:
    self.arm_v = 1s
0x000E84:
    if !(> self.shakify 0s) goto 0x000F08
0x000E98:
    self.x = (- (+ self.xstart (random[]:int32 self.shakify)) (random[]:int32 self.shakify))
    self.y = (- (+ self.ystart (random[]:int32 self.shakify)) (random[]:int32 self.shakify))
0x000F08:
    exit
