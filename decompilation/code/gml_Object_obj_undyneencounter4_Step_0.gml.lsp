0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000160
0x000018:
    if !(> 1570.x self.x) goto 0x000044
0x000030:
    push (== self.con 0s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x000160
0x00004C:
    self.con = 2s
    self.musfade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.musfade)
    if !(bool (instance_exists[]:int32 (var 1046s))) goto 0x0000D0
0x0000B8:
    pushenv 1046s 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    popenv 0x0000C0
0x0000D0:
    push (var 1117s)
    self.undyne = (instance_create[]:int32 (var 100s) -1s (- 0s:view_xview 420s))
    push 1456s
    stog.rsprite* = (int32 self.undyne)
    push 0s
    stog.direction* = (int32 self.undyne)
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
0x000160:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000220
0x000178:
    if !(== self.con 2s) goto 0x0001C0
0x00018C:
    if !(< 1570.x (- self.x 320s)) goto 0x0001C0
0x0001AC:
    push (== global.interact 0s)
    goto 0x0001C4
0x0001C0:
    push 0s
0x0001C4:
    if !pop goto 0x000220
0x0001C8:
    self.con = 1.5d
    stog.alarm[4s] = 30s
    global.interact = 1s
    push -1s
    self.curview = 0s:view_xview
    [obj_mainchara].cutscene = 1s
0x000220:
    if !(== self.con 2.5d) goto 0x000248
0x00023C:
    self.con = 3s
0x000248:
    if !(== self.con 3s) goto 0x0002D0
0x00025C:
    push -1s
    stog.view_xview[(- 0s:view_xview 1s)] = 0s
    push -1s
    if !(< 0s:view_xview (- self.curview 50s)) goto 0x0002D0
0x0002A8:
    self.con = 3.1d
    stog.alarm[4s] = 140s
0x0002D0:
    if !(== self.con 3.1d) goto 0x00033C
0x0002EC:
    push 3s
    stog.fun* = (int32 self.undyne)
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push 0.1d
    stog.image_speed* = (int32 self.undyne)
0x00033C:
    if !(== self.con 4.1d) goto 0x0003C0
0x000358:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    self.con = 5s
    stog.alarm[4s] = 60s
0x0003C0:
    if !(== self.con 6s) goto 0x000408
0x0003D4:
    self.con = 7s
    call (snd_play[]:int32 (var 13s))
    stog.alarm[4s] = 30s
0x000408:
    if !(== self.con 8s) goto 0x000584
0x00041C:
    call (snd_play[]:int32 (var 20s))
    self.rr = 1s
    if (<= 3s 0) goto 0x000574
0x000454:
    push 3s
    self.ar = (instance_create[]:int32 (var 1363s) (+ (+ -223s (* self.rr 3s)) (random[]:int32 (var 6s))) (+ (+ 170s (* self.rr 6s)) (random[]:int32 (var 3s))))
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
    self.rr = (+ self.rr 1s)
    if (bool (- pop 1)) goto 0x000454
0x000574:
    push (- pop 1)
    pop
    self.con = 9s
0x000584:
    if !(== self.con 9s) goto 0x000638
0x000598:
    if !(> (int32 self.ar):y 1570.y) goto 0x000638
0x0005BC:
    call (snd_play[]:int32 (var 14s))
    call (instance_create[]:int32 (var 118s) (var 0s) (var 0s))
    call (scr_shake[]:int32 (var 2s) (var 2s) (var 2s))
    self.con = 10s
    stog.alarm[4s] = 30s
0x000638:
    if !(== self.con 11s) goto 0x0006B0
0x00064C:
    global.phasing = 1s
    self.con = 12s
    stog.alarm[4s] = 70s
    self.dir = 0s
    self.int = 1s
    self.tspeed = 1s
    self.tgrav = 0.2d
0x0006B0:
    if !(== self.con 12s) goto 0x0007FC
0x0006C4:
    if !(== self.dir 0s) goto 0x000768
0x0006D8:
    self.memx = (- (random[]:int32 self.int) (/ self.int (double 2s)))
    self.memy = (- (random[]:int32 self.int) (/ self.int (double 2s)))
    self.int = (+ self.int 0.08d)
    self.dir = 1s
    goto 0x00079C
0x000768:
    self.memx = (- self.memx)
    self.memy = (- self.memy)
    self.dir = 0s
0x00079C:
    [obj_mainchara].x = (+ 1570.x self.memx)
    [obj_mainchara].y = (+ 1570.y self.memy)
    call (tile_layer_shift[]:int32 self.memy self.memx (var 1000010))
0x0007FC:
    if !(== self.con 13s) goto 0x000830
0x000810:
    self.con = 14s
    stog.alarm[4s] = 110s
0x000830:
    if (== self.con 14s) goto 0x000858
0x000844:
    push (== self.con 15s)
    goto 0x00085C
0x000858:
    push 1s
0x00085C:
    if !pop goto 0x0009B4
0x000860:
    self.tspeed = (+ self.tspeed self.tgrav)
    global.border = 0s
    stog.flag[15s] = 0s
    stog.flag[16s] = 0s
    call (SCR_BORDERSETUP[]:int32 )
    call (tile_layer_shift[]:int32 self.tspeed (var 1s) (var 1000010))
    [obj_mainchara].x = (+ 1570.x 1s)
    [obj_mainchara].y = (+ 1570.y (- self.tspeed 0.8d))
    [obj_mainchara].image_angle = (- 1570.image_angle 0.5d)
    push -1s
    stog.view_yview[(+ 0s:view_yview 2s)] = 0s
    self.f = (instance_create[]:int32 (var 150s) (var 0s) (var 0s))
    push 0.001d
    stog.tspeed* = (int32 self.f)
0x0009B4:
    if !(== self.con 15s) goto 0x000A14
0x0009C8:
    call (snd_play[]:int32 (var 22s))
    pushenv 150s 0x0009F0
0x0009E4:
    call (instance_destroy[]:int32 )
0x0009F0:
    popenv 0x0009E4
0x0009F4:
    stog.alarm[4s] = 3s
    self.con = 16s
0x000A14:
    if !(== self.con 17s) goto 0x000B48
0x000A28:
    self.g = (instance_create[]:int32 (var 1363s) (var 0s) (var 0s))
    push 1s
    stog.visible* = (int32 self.g)
    [obj_mainchara].x = 20s
    [obj_mainchara].y = 20s
    [obj_mainchara].cutscene = 0s
    push 10s
    stog.depth* = (int32 self.g)
    push 996s
    stog.sprite_index* = (int32 self.g)
    push 100s
    stog.image_xscale* = (int32 self.g)
    push 100s
    stog.image_yscale* = (int32 self.g)
    self.tempmusic = (caster_load[]:int32 (var "music/musicbox.ogg"))
    self.con = 18s
    self.tempvol = 0s
    self.temppitch = 0.7d
    stog.alarm[4s] = 120s
0x000B48:
    if !(== self.con 19s) goto 0x000C90
0x000B5C:
    call (caster_loop[]:int32 (var 0.7d) self.tempvol self.tempmusic)
    global.typer = 35s
    global.msc = 0s
    global.facechoice = 0s
    stog.msg[0s] = "It sounds like it&came from over&here.../"
    stog.msg[1s] = "Oh^1! You've fallen&down^1, haven't you.../"
    stog.msg[2s] = "Are you okay?/"
    stog.msg[3s] = "Here^1, get up.../"
    stog.msg[4s] = ".../"
    stog.msg[5s] = (+ global.charname "^1, huh?/")
    stog.msg[6s] = "That's a nice name./%%"
    call (instance_create[]:int32 (var 782s) (var 80s) (var 50s))
    self.con = 20s
0x000C90:
    if (== self.con 19s) goto 0x000CB8
0x000CA4:
    push (== self.con 20s)
    goto 0x000CBC
0x000CB8:
    push 1s
0x000CBC:
    if !pop goto 0x000D10
0x000CC0:
    if !(< self.tempvol 1s) goto 0x000CF4
0x000CD4:
    self.tempvol = (+ self.tempvol 0.02d)
0x000CF4:
    call (caster_set_volume[]:int32 self.tempvol self.tempmusic)
0x000D10:
    if !(== self.con 20s) goto 0x000D40
0x000D24:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D44
0x000D40:
    push 0s
0x000D44:
    if !pop goto 0x000DE4
0x000D48:
    global.typer = 36s
    stog.msg[0s] = " My name is     %%"
    call (instance_create[]:int32 (var 782s) (var 80s) (var 50s))
    self.q = (instance_create[]:int32 (var 150s) (var 0s) (var 0s))
    push 0.01d
    stog.tspeed* = (int32 self.q)
    self.con = 21s
0x000DE4:
    if !(== self.con 21s) goto 0x000EC0
0x000DF8:
    if !(> self.tempvol 0s) goto 0x000E2C
0x000E0C:
    self.tempvol = (- self.tempvol 0.008d)
0x000E2C:
    self.temppitch = (+ self.temppitch 0.004d)
    call (caster_set_volume[]:int32 self.tempvol self.tempmusic)
    call (caster_set_pitch[]:int32 self.temppitch self.tempmusic)
    if !(<= self.tempvol 0.009d) goto 0x000EC0
0x000EA0:
    call (caster_free[]:int32 self.tempmusic)
    self.con = 22s
0x000EC0:
    if !(== self.con 22s) goto 0x000EE0
0x000ED4:
    call (room_goto_next[]:int32 )
0x000EE0:
    exit
