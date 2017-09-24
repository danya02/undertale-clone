0x000000:
    self.anim = (+ self.anim self.animspeed)
    if !(== self.mode 0s) goto 0x0001B4
0x000030:
    call (draw_sprite[]:int32 self.y self.x (floor[]:int32 self.anim) (var 2120s))
    if !(< 1570.y (- self.remy 2s)) goto 0x0000C4
0x000084:
    if !(== self.onoff 1s) goto 0x0000B4
0x000098:
    [obj_mainchara].y = (- self.remy 1s)
    goto 0x0000C4
0x0000B4:
    [obj_mainchara].y = self.remy
0x0000C4:
    self.remy = 1570.y
    if !(== self.onoff 0s) goto 0x0000F8
0x0000E8:
    self.onoff = 1s
    goto 0x000104
0x0000F8:
    self.onoff = 0s
0x000104:
    if !(< 1570.y 180s) goto 0x0001B4
0x000118:
    self.animspeed = (+ 0.08d (* 0.8d (/ (- 180s 1570.y) (double 180s))))
    self.pit = (+ 0.6d (* 1s (/ (- 180s 1570.y) (double 180s))))
    call (caster_set_pitch[]:int32 self.pit self.dist)
0x0001B4:
    if !(== self.drawkey 1s) goto 0x000230
0x0001C8:
    call (draw_sprite_ext[]:int32 (var 1s) (var 65280) (var 0s) (var 1s) (var 1s) (+ self.y 30s) (+ self.x 34s) self.anim (var 2110s))
0x000230:
    if !(== self.myinteract 1s) goto 0x000258
0x000244:
    push (== self.mode 0s)
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x000300
0x000260:
    self.animspeed = 0.1d
    self.mode = 1s
    self.myinteract = 0s
    global.interact = 1s
    self.con = 1s
    stog.alarm[4s] = 10s
    call (caster_free[]:int32 self.dist)
    call (snd_play[]:int32 (var 22s))
    stog.flag[483s] = 1s
    self.drawkey = 1s
0x000300:
    if !(== self.con 2s) goto 0x000338
0x000314:
    self.myinteract = 0s
    global.interact = 0s
    self.con = 3s
0x000338:
    if !(== self.myinteract 1s) goto 0x000368
0x00034C:
    push -5s
    push (== 483s:flag 1s)
    goto 0x00036C
0x000368:
    push 0s
0x00036C:
    if !pop goto 0x000420
0x000370:
    self.con = 4s
    self.myinteract = 0s
    global.interact = 1s
    global.msc = 0s
    global.typer = 5s
    self.drawkey = 0s
    stog.msg[0s] = "* (There's a green key lying&  in the bathtub.)/"
    stog.msg[1s] = "* (You took it and put it&  on your keychain.)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    stog.flag[483s] = 2s
0x000420:
    if !(== self.con 4s) goto 0x000450
0x000434:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000454
0x000450:
    push 0s
0x000454:
    if !pop goto 0x000470
0x000458:
    self.con = 10s
    global.interact = 0s
0x000470:
    if !(== self.myinteract 1s) goto 0x0004A0
0x000484:
    push -5s
    push (>= 483s:flag 2s)
    goto 0x0004A4
0x0004A0:
    push 0s
0x0004A4:
    if !pop goto 0x000520
0x0004A8:
    self.con = 12s
    self.myinteract = 0s
    global.interact = 1s
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "* (It's an empty bathtub.)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000520:
    if !(== self.con 12s) goto 0x000550
0x000534:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000554
0x000550:
    push 0s
0x000554:
    if !pop goto 0x000570
0x000558:
    self.con = 10s
    global.interact = 0s
0x000570:
    if !(== self.mode 1s) goto 0x000618
0x000584:
    if !(> self.size 0.3d) goto 0x0005C0
0x0005A0:
    self.size = (- self.size 0.1d)
0x0005C0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) self.size self.y self.x (var 0s) (var 2121s))
0x000618:
    if !(== self.mode 2s) goto 0x000698
0x00062C:
    self.size = 0.3d
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) self.size self.y self.x (var 0s) (var 2121s))
0x000698:
    call (draw_sprite[]:int32 self.y self.x (var 0s) (var 2122s))
0x0006C4:
    exit
