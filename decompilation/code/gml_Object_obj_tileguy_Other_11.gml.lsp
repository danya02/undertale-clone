0x000000:
    self.checkx = (+ self.x 10s)
    self.checky = (+ self.y 20s)
    call (event_user[]:int32 (var 0s))
    self.mytile = self.thistile
    if !(== self.mytile 0s) goto 0x000104
0x000068:
    if !(== self.moving 1s) goto 0x000104
0x00007C:
    if !(== self.moving 1s) goto 0x00009C
0x000090:
    global.facing = 1s
0x00009C:
    if !(== self.moving 3s) goto 0x0000BC
0x0000B0:
    global.facing = 3s
0x0000BC:
    self.moving = 0s
    self.speed = 0s
    [obj_mainchara].visible = 1s
    [obj_mainchara].phasing = 0s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000104:
    if !(== self.mytile 1s) goto 0x000124
0x000118:
    self.moving = 0s
0x000124:
    if !(== self.mytile 3s) goto 0x0004D0
0x000138:
    if !(!= self.orange 0s) goto 0x0001F4
0x00014C:
    call (snd_play[]:int32 (var 28s))
    self.image_speed = 0s
    pushenv (int32 self.tileid) 0x0001E0
0x00017C:
    self.af = (instance_create[]:int32 (var 108s) self.y self.x)
    push 1755s
    stog.sprite_index* = (int32 self.af)
    push (- self.depth 1s)
    stog.depth* = (int32 self.af)
0x0001E0:
    popenv 0x00017C
0x0001E4:
    self.image_blend = self.yblend
0x0001F4:
    self.orange = 0s
    self.mytile = 0s
    self.tileid2 = self.tileid
    if !(== self.moving 1s) goto 0x000260
0x000230:
    self.checkx = (+ self.x 30s)
    self.checky = (+ self.y 20s)
0x000260:
    if !(== self.moving 2s) goto 0x0002A4
0x000274:
    self.checkx = (+ self.x 10s)
    self.checky = (- self.y 5s)
0x0002A4:
    if !(== self.moving 3s) goto 0x0002E8
0x0002B8:
    self.checkx = (- self.x 10s)
    self.checky = (+ self.y 20s)
0x0002E8:
    if !(== self.moving 4s) goto 0x00032C
0x0002FC:
    self.checkx = (+ self.x 10s)
    self.checky = (+ self.y 35s)
0x00032C:
    call (event_user[]:int32 (var 0s))
    self.mytile2 = self.thistile
    if !(!= self.mytile2 0s) goto 0x000378
0x000364:
    push (!= self.mytile2 2s)
    goto 0x00037C
0x000378:
    push 0s
0x00037C:
    if !pop goto 0x0004C4
0x000380:
    pushenv (int32 self.tileid2) 0x00049C
0x000390:
    self.af = (instance_create[]:int32 (var 108s) (+ self.y 10s) (+ self.x 10s))
    push 1747s
    stog.sprite_index* = (int32 self.af)
    push (- self.depth 2s)
    stog.depth* = (int32 self.af)
    push (+ -90s (* 1212.moving 90s))
    stog.image_angle* = (int32 self.af)
    push (+ -90s (* 1212.moving 90s))
    stog.direction* = (int32 self.af)
    push 2s
    stog.image_alpha* = (int32 self.af)
    push (/ 1212.speed (double 3s))
    stog.speed* = (int32 self.af)
0x00049C:
    popenv 0x000390
0x0004A0:
    self.prevx = self.x
    self.prevy = self.y
    goto 0x0004D0
0x0004C4:
    self.moving = 0s
0x0004D0:
    if !(== self.mytile 4s) goto 0x0005C4
0x0004E4:
    if !(== self.electrocute 0s) goto 0x0005C4
0x0004F8:
    call (snd_play[]:int32 (var 24s))
    pushenv (int32 self.tileid) 0x0005A0
0x00051C:
    self.ga = (instance_create[]:int32 (var 107s) self.y self.x)
    push 1749s
    stog.sprite_index* = (int32 self.ga)
    push 1s
    stog.image_speed* = (int32 self.ga)
    if !(== self.sprite_index 1752s) goto 0x0005A0
0x000588:
    push 1750s
    stog.sprite_index* = (int32 self.ga)
0x0005A0:
    popenv 0x00051C
0x0005A4:
    self.electrocute = 1s
    stog.alarm[5s] = 10s
0x0005C4:
    if !(== self.mytile 5s) goto 0x0006A0
0x0005D8:
    self.moving = 0s
    if !(!= self.orange 1s) goto 0x000694
0x0005F8:
    self.image_blend = self.oblend
    call (snd_play[]:int32 (var 28s))
    pushenv (int32 self.tileid) 0x000690
0x00062C:
    self.af = (instance_create[]:int32 (var 108s) self.y self.x)
    push 1755s
    stog.sprite_index* = (int32 self.af)
    push (- self.depth 1s)
    stog.depth* = (int32 self.af)
0x000690:
    popenv 0x00062C
0x000694:
    self.orange = 1s
0x0006A0:
    if !(== self.mytile 6s) goto 0x000834
0x0006B4:
    if !(== self.orange 1s) goto 0x000828
0x0006C8:
    if !(== self.electrocute 0s) goto 0x000824
0x0006DC:
    self.pir = (+ self.pir 1s)
    self.dogchance = 0s
    if !(> self.pir 8s) goto 0x00072C
0x000714:
    self.dogchance = (random[]:int32 (var 5s))
0x00072C:
    if !(== self.dog 1s) goto 0x00074C
0x000740:
    self.dogchance = 0s
0x00074C:
    pushenv (int32 self.tileid) 0x0007EC
0x00075C:
    self.ga = (instance_create[]:int32 (var 107s) self.y self.x)
    push 1742s
    stog.sprite_index* = (int32 self.ga)
    if !(> 1212.dogchance 4s) goto 0x0007D4
0x0007B0:
    push 1743s
    stog.sprite_index* = (int32 self.ga)
    [obj_tileguy].dog = 1s
0x0007D4:
    push 1s
    stog.image_speed* = (int32 self.ga)
0x0007EC:
    popenv 0x00075C
0x0007F0:
    call (snd_play[]:int32 (var 29s))
    self.electrocute = 1s
    stog.alarm[5s] = 2s
0x000824:
    goto 0x000834
0x000828:
    self.moving = 0s
0x000834:
    if !(== self.mytile 7s) goto 0x0008F4
0x000848:
    pushenv (int32 self.tileid) 0x0008BC
0x000858:
    self.af = (instance_create[]:int32 (var 108s) self.y self.x)
    push 1755s
    stog.sprite_index* = (int32 self.af)
    push (- self.depth 1s)
    stog.depth* = (int32 self.af)
0x0008BC:
    popenv 0x000858
0x0008C0:
    stog.flag[289s] = 1s
    call (snd_play[]:int32 (var 115s))
    self.moving = 0s
0x0008F4:
    exit
