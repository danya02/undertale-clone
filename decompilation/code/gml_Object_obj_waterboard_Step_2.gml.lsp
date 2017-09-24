0x000000:
    if !(bool (instance_exists[]:int32 (var 1110s))) goto 0x0000FC
0x000018:
    if !(== self.myinteract 1s) goto 0x000054
0x00002C:
    if !(== self.using 0s) goto 0x000054
0x000040:
    push (== 1110.waterboard 0s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x0000C0
0x00005C:
    if !(== (snd_isplaying[]:int32 (var 112s)) 0s) goto 0x00008C
0x000078:
    call (snd_play[]:int32 (var 112s))
0x00008C:
    self.using = 1s
    [obj_waterboardpuzzle1].waterboard = 1s
    self.myinteract = 0s
    self.solid = 0s
    goto 0x0000FC
0x0000C0:
    if !(== self.myinteract 1s) goto 0x0000E8
0x0000D4:
    push (== self.using 0s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x0000FC
0x0000F0:
    self.myinteract = 0s
0x0000FC:
    if !(== self.myinteract 1s) goto 0x000124
0x000110:
    push (== self.using 1s)
    goto 0x000128
0x000124:
    push 0s
0x000128:
    if !pop goto 0x0002E4
0x00012C:
    self.x = (- self.x 40s)
    pushenv 1570s 0x0002BC
0x00014C:
    if !(== global.facing 2s) goto 0x0002BC
0x000160:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 5s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))) goto 0x0002BC
0x0001E0:
    self.interactedobject = (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1368s) (+ self.y 8s) (- (+ self.x self.sprite_width) 4s) (- (+ self.y self.sprite_height) 5s) (+ self.x 4s))
    if !(!= self.interactedobject -4s) goto 0x0002BC
0x000274:
    pushenv (int32 self.interactedobject) 0x000290
0x000284:
    self.facing = 0s
0x000290:
    popenv 0x000284
0x000294:
    pushenv (int32 self.interactedobject) 0x0002B8
0x0002A4:
    call (script_execute[]:int32 (var 111s))
0x0002B8:
    popenv 0x0002A4
0x0002BC:
    popenv 0x00014C
0x0002C0:
    self.myinteract = 0s
    self.x = (+ self.x 40s)
0x0002E4:
    if !(== self.using 1s) goto 0x000878
0x0002F8:
    global.encounter = 0s
    self.x = 1570.x
    self.y = (- 1570.y 10s)
    self.depth = (- 1570.depth 2s)
    if !(== global.interact 0s) goto 0x000878
0x000358:
    if !(== (keyboard_multicheck_pressed[]:int32 (var 0s)) 1s) goto 0x000878
0x000374:
    if !(== global.facing 0s) goto 0x0004C0
0x000388:
    self.j = (instance_position[]:int32 (var 1363s) (+ 1570.y 40s) (+ 1570.x 10s))
    self.h = (instance_position[]:int32 (var 1114s) (+ 1570.y 40s) (+ 1570.x 10s))
    self.g = (instance_position[]:int32 (var 1112s) (+ 1570.y 40s) (+ 1570.x 10s))
    if !(== self.h -4s) goto 0x000458
0x000444:
    push (== self.j -4s)
    goto 0x00045C
0x000458:
    push 0s
0x00045C:
    if !pop goto 0x0004C0
0x000460:
    if !(!= self.g -4s) goto 0x0004C0
0x000474:
    self.y = (+ 1570.y 30s)
    call (move_snap[]:int32 (var 20s) (var 20s))
    self.using = 2s
    self.dir = 0s
0x0004C0:
    if !(== global.facing 2s) goto 0x0005A0
0x0004D4:
    self.g = (instance_position[]:int32 (var 1112s) 1570.y (+ 1570.x 10s))
    if !(!= self.g -4s) goto 0x0005A0
0x000518:
    if !(~ (bool (collision_point[]:int32 (var 1s) (var 0s) (var 1114s) 1570.y (+ 1570.x 10s)))) goto 0x0005A0
0x00055C:
    self.y = 1570.y
    call (move_snap[]:int32 (var 20s) (var 20s))
    self.using = 2s
    self.dir = 2s
0x0005A0:
    if !(== global.facing 1s) goto 0x0006FC
0x0005B4:
    self.j = (instance_position[]:int32 (var 1363s) (+ 1570.y 20s) (+ 1570.x 30s))
    self.h = (instance_position[]:int32 (var 1114s) (+ 1570.y 20s) (+ 1570.x 30s))
    self.g = (instance_position[]:int32 (var 1112s) (+ 1570.y 20s) (+ 1570.x 30s))
    if !(== self.j -4s) goto 0x0006FC
0x000670:
    if !(== self.h -4s) goto 0x0006FC
0x000684:
    if !(!= self.g -4s) goto 0x0006FC
0x000698:
    self.y = (+ 1570.y 10s)
    self.x = (+ 1570.x 20s)
    call (move_snap[]:int32 (var 20s) (var 20s))
    self.using = 2s
    self.dir = 1s
0x0006FC:
    if !(== global.facing 3s) goto 0x000858
0x000710:
    self.j = (instance_position[]:int32 (var 1363s) (+ 1570.y 20s) (- 1570.x 10s))
    self.h = (instance_position[]:int32 (var 1114s) (+ 1570.y 20s) (- 1570.x 10s))
    self.g = (instance_position[]:int32 (var 1112s) (+ 1570.y 20s) (- 1570.x 10s))
    if !(== self.j -4s) goto 0x000858
0x0007CC:
    if !(== self.h -4s) goto 0x000858
0x0007E0:
    if !(!= self.g -4s) goto 0x000858
0x0007F4:
    self.y = (+ 1570.y 10s)
    self.x = (- 1570.x 20s)
    call (move_snap[]:int32 (var 20s) (var 20s))
    self.using = 2s
    self.dir = 3s
0x000858:
    if !(== self.using 2s) goto 0x000878
0x00086C:
    [obj_waterboardpuzzle1].waterboard = 0s
0x000878:
    if !(== self.using 2s) goto 0x000CDC
0x00088C:
    self.depth = 900000
    if !(== self.dir 2s) goto 0x0009A0
0x0008B0:
    self.y = (- self.y 2s)
    if !(!= (instance_position[]:int32 (var 1363s) (- self.y 2s) (+ self.x 10s)) -4s) goto 0x000910
0x000904:
    self.using = 3s
0x000910:
    if !(!= (instance_position[]:int32 (var 1113s) (- self.y 2s) (+ self.x 10s)) -4s) goto 0x000958
0x00094C:
    self.using = 3s
0x000958:
    if !(!= (instance_position[]:int32 (var 1114s) (- self.y 2s) (+ self.x 10s)) -4s) goto 0x0009A0
0x000994:
    self.using = 3s
0x0009A0:
    if !(== self.dir 1s) goto 0x000AA4
0x0009B4:
    self.x = (+ self.x 2s)
    if !(!= (instance_position[]:int32 (var 1363s) (+ self.y 10s) (+ self.x 20s)) -4s) goto 0x000A14
0x000A08:
    self.using = 3s
0x000A14:
    if !(!= (instance_position[]:int32 (var 1113s) (+ self.y 10s) (+ self.x 20s)) -4s) goto 0x000A5C
0x000A50:
    self.using = 3s
0x000A5C:
    if !(!= (instance_position[]:int32 (var 1114s) (+ self.y 10s) (+ self.x 20s)) -4s) goto 0x000AA4
0x000A98:
    self.using = 3s
0x000AA4:
    if !(== self.dir 0s) goto 0x000BA8
0x000AB8:
    self.y = (+ self.y 2s)
    if !(!= (instance_position[]:int32 (var 1363s) (+ self.y 22s) (+ self.x 10s)) -4s) goto 0x000B18
0x000B0C:
    self.using = 3s
0x000B18:
    if !(!= (instance_position[]:int32 (var 1113s) (+ self.y 22s) (+ self.x 10s)) -4s) goto 0x000B60
0x000B54:
    self.using = 3s
0x000B60:
    if !(!= (instance_position[]:int32 (var 1114s) (+ self.y 22s) (+ self.x 10s)) -4s) goto 0x000BA8
0x000B9C:
    self.using = 3s
0x000BA8:
    if !(== self.dir 3s) goto 0x000CAC
0x000BBC:
    self.x = (- self.x 2s)
    if !(!= (instance_position[]:int32 (var 1363s) (+ self.y 10s) (- self.x 2s)) -4s) goto 0x000C1C
0x000C10:
    self.using = 3s
0x000C1C:
    if !(!= (instance_position[]:int32 (var 1113s) (+ self.y 10s) (- self.x 2s)) -4s) goto 0x000C64
0x000C58:
    self.using = 3s
0x000C64:
    if !(!= (instance_position[]:int32 (var 1114s) (+ self.y 10s) (- self.x 2s)) -4s) goto 0x000CAC
0x000CA0:
    self.using = 3s
0x000CAC:
    if !(== self.using 3s) goto 0x000CDC
0x000CC0:
    call (move_snap[]:int32 (var 20s) (var 20s))
0x000CDC:
    if !(== self.using 5s) goto 0x000D24
0x000CF0:
    self.image_speed = 0.17d
    stog.alarm[2s] = 30s
    self.using = 6s
0x000D24:
    exit
