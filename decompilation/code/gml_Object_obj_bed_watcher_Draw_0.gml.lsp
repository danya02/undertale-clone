0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if (bool (keyboard_check_pressed[]:int32 (var 37s))) goto 0x000074
0x000044:
    if (bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x000074
0x00005C:
    push (bool (keyboard_multicheck_pressed[]:int32 (var 1s)))
    goto 0x000078
0x000074:
    push 1s
0x000078:
    if !pop goto 0x0000B8
0x00007C:
    if !(> self.con 7s) goto 0x0000A4
0x000090:
    push (< self.con 30s)
    goto 0x0000A8
0x0000A4:
    push 0s
0x0000A8:
    if !pop goto 0x0000B8
0x0000AC:
    self.con = 30s
0x0000B8:
    if !(== self.con 5s) goto 0x000200
0x0000CC:
    self.depth = 100000
    self.limbx = 0s
    self.limby = 0s
    global.phasing = 1s
    global.interact = 1s
    self.siner = 0s
    self.con = 6s
    stog.alarm[4s] = 20s
    self.xx = (+ self.x 16s)
    self.yy = (+ self.y 11s)
    self.getx = 1570.x
    self.gety = 1570.y
    self.tox = (/ (- self.xx self.getx) (double 20s))
    self.toy = (/ (- self.yy self.gety) (double 20s))
    self.ivol = (caster_get_volume[]:int32 global.currentsong)
    self.vol = self.ivol
0x000200:
    if !(== self.con 6s) goto 0x0002C0
0x000214:
    self.vol = (- self.vol 0.05d)
    call (caster_set_volume[]:int32 self.vol global.currentsong)
    global.interact = 1s
    global.facing = 1s
    [obj_mainchara].image_index = (+ 1570.image_index 0.25d)
    [obj_mainchara].x = (+ 1570.x self.tox)
    [obj_mainchara].y = (+ 1570.y self.toy)
0x0002C0:
    if !(== self.con 7s) goto 0x000358
0x0002D4:
    call (caster_pause[]:int32 global.currentsong)
    [obj_mainchara].image_index = 0s
    [obj_mainchara].x = (floor[]:int32 1570.x)
    [obj_mainchara].y = (floor[]:int32 1570.y)
    self.con = 8s
    stog.alarm[4s] = 150s
    stog.alarm[4s] = 150s
0x000358:
    if !(== self.con 9s) goto 0x0003AC
0x00036C:
    self.con = 10s
    self.win = 1s
    stog.alarm[4s] = 100s
    stog.alarm[4s] = 100s
0x0003AC:
    if !(== self.con 11s) goto 0x0003E0
0x0003C0:
    self.con = 12s
    stog.alarm[4s] = 340s
0x0003E0:
    if !(== self.con 12s) goto 0x000440
0x0003F4:
    self.limbx = (+ self.limbx 0.1d)
    self.limby = (* (sin[]:int32 (/ self.limbx (double 4s))) 2s)
0x000440:
    if !(== self.con 13s) goto 0x00047C
0x000454:
    self.con = 13.1d
    stog.alarm[4s] = 70s
0x00047C:
    if !(== self.con 14.1d) goto 0x0004B8
0x000498:
    self.con = 14s
    stog.alarm[4s] = 20s
0x0004B8:
    if !(== self.con 14s) goto 0x0004E4
0x0004CC:
    self.limby = (+ self.limby 1s)
0x0004E4:
    if !(== self.con 15s) goto 0x000518
0x0004F8:
    self.con = 16s
    stog.alarm[4s] = 30s
0x000518:
    if !(== self.con 17s) goto 0x00054C
0x00052C:
    self.con = 18s
    stog.alarm[4s] = 8s
0x00054C:
    if !(== self.con 18s) goto 0x000584
0x000560:
    self.tuck = 1s
    self.limby = (- self.limby 3s)
0x000584:
    if !(== self.con 19s) goto 0x0005C4
0x000598:
    self.siner = 0s
    self.con = 20s
    stog.alarm[4s] = 30s
0x0005C4:
    if !(== self.con 21s) goto 0x0005F8
0x0005D8:
    self.con = 22s
    stog.alarm[4s] = 15s
0x0005F8:
    if !(== self.con 22s) goto 0x000644
0x00060C:
    self.limbx = (+ self.limbx 1s)
    self.limby = (- self.limby 0.8d)
0x000644:
    if !(== self.con 23s) goto 0x000678
0x000658:
    self.con = 24s
    stog.alarm[4s] = 20s
0x000678:
    if !(== self.con 25s) goto 0x0006AC
0x00068C:
    self.con = 26s
    stog.alarm[4s] = 40s
0x0006AC:
    if (== self.con 26s) goto 0x0006E8
0x0006C0:
    if (== self.con 27s) goto 0x0006E8
0x0006D4:
    push (== self.con 28s)
    goto 0x0006EC
0x0006E8:
    push 1s
0x0006EC:
    if !pop goto 0x000748
0x0006F0:
    self.siner = (+ self.siner 1s)
    self.limby = (+ self.limby (/ (sin[]:int32 (/ self.siner (double 3s))) 1.5d))
0x000748:
    if !(== self.con 27s) goto 0x000774
0x00075C:
    self.win = 0s
    self.con = 28s
0x000774:
    if !(== self.con 30s) goto 0x000810
0x000788:
    call (caster_resume[]:int32 global.currentsong)
    self.depth = 100000
    self.win = 0s
    self.tuck = 2s
    global.facing = 3s
    [obj_mainchara].image_speed = 0.25d
    [obj_mainchara].hspeed = -3s
    stog.alarm[4s] = 13s
    self.con = 31s
0x000810:
    if !(== self.con 31s) goto 0x00088C
0x000824:
    if !(< self.vol self.ivol) goto 0x000860
0x00083C:
    self.vol = (+ self.vol 0.08d)
    goto 0x000870
0x000860:
    self.vol = self.ivol
0x000870:
    call (caster_set_volume[]:int32 self.vol global.currentsong)
0x00088C:
    if !(== self.con 32s) goto 0x00090C
0x0008A0:
    call (scr_depth[]:int32 )
    [obj_mainchara].image_speed = 0s
    global.facing = 0s
    [obj_mainchara].hspeed = 0s
    pushenv 1570s 0x0008E4
0x0008D8:
    self.uncan = 0s
0x0008E4:
    popenv 0x0008D8
0x0008E8:
    global.interact = 0s
    global.phasing = 0s
    self.con = 0s
0x00090C:
    if !(< self.bedy 30s) goto 0x000980
0x000920:
    self.depth = 100s
    call (draw_sprite_ext[]:int32 (var 1s) 1570.image_blend (var 0s) (var 1s) (var 1s) 1570.y 1570.x (var 0s) 1570.sprite_index)
0x000980:
    if !(== self.tuck 1s) goto 0x0009CC
0x000994:
    self.bedy = (- self.bedy 4s)
    if !(<= self.bedy 4s) goto 0x0009CC
0x0009C0:
    self.bedy = 4s
0x0009CC:
    if !(== self.tuck 2s) goto 0x000A94
0x0009E0:
    self.win = 0s
    self.bedy = (+ self.bedy 4s)
    if !(>= self.bedy 30s) goto 0x000A94
0x000A18:
    self.bedy = 30s
    self.depth = 100000
    call (draw_sprite_ext[]:int32 (var 1s) 1570.image_blend (var 0s) (var 1s) (var 1s) 1570.y 1570.x (var 0s) 1570.sprite_index)
    self.tuck = 0s
0x000A94:
    if !(== self.win 1s) goto 0x000AE0
0x000AA8:
    if !(< self.walpha 1s) goto 0x000ADC
0x000ABC:
    self.walpha = (+ self.walpha 0.02d)
0x000ADC:
    goto 0x000B14
0x000AE0:
    if !(> self.walpha 0s) goto 0x000B14
0x000AF4:
    self.walpha = (- self.walpha 0.1d)
0x000B14:
    call (draw_sprite_part[]:int32 (+ (+ self.y 13s) self.bedy) (+ self.x 2s) (- 39s self.bedy) (var 46s) (var 0s) (var 0s) (var 0s) (var 2153s))
    call (draw_sprite_ext[]:int32 self.walpha (var 16777215) (var 0s) (var 1s) (var 1s) (- self.y 15s) (- self.x 20s) (var 0s) (var 2155s))
    call (draw_sprite_part_ext[]:int32 self.walpha (var 16777215) (var 1s) (var 1s) (+ (+ self.y 20s) self.limby) (- self.x 14s) (var 20s) self.limbx (var 0s) (- 50s self.limbx) (var 0s) (var 2156s))
0x000C80:
    exit
