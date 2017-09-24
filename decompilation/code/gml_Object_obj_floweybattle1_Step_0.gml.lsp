0x000000:
    call (SCR_BORDERSETUP[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000090
0x00004C:
    if !(!= 782.halt 0s) goto 0x00007C
0x000060:
    self.image_speed = 0s
    self.image_index = 0s
    goto 0x000090
0x00007C:
    self.image_speed = 0.2d
0x000090:
    if !(== (instance_exists[]:int32 (var 202s)) 0s) goto 0x00087C
0x0000AC:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x00087C
0x0000C8:
    if !(== self.conversation 17s) goto 0x000124
0x0000DC:
    self.image_angle = (+ self.image_angle 5s)
    self.gravity_direction = 270s
    self.direction = 155s
    self.speed = 20s
    self.gravity = 10s
0x000124:
    if !(== self.conversation 14s) goto 0x0001C4
0x000138:
    self.sprite_index = 178s
    self.image_speed = 0.5d
    pushenv (int32 self.blcon) 0x000174
0x000168:
    call (instance_destroy[]:int32 )
0x000174:
    popenv 0x000168
0x000178:
    [obj_fakepellet].attackyou = 1s
    [obj_fakeheart].movement = 1s
    self.conversation = 15s
    call (snd_play[]:int32 (var 52s))
    stog.alarm[9s] = 150s
0x0001C4:
    if !(== self.conversation 12s) goto 0x000280
0x0001D8:
    global.border = 4s
    pushenv (int32 self.blcon) 0x000200
0x0001F4:
    call (instance_destroy[]:int32 )
0x000200:
    popenv 0x0001F4
0x000204:
    self.sprite_index = 179s
    stog.alarm[2s] = 70s
    self.conversation = 13s
    [obj_fakeheart].movement = 0s
    call (instance_create[]:int32 (var 607s) (+ 761.y 40s) (/ (+ 759.x 760.x) (double 2s)))
0x000280:
    if !(== self.conversation 10s) goto 0x0002D4
0x000294:
    call (caster_stop[]:int32 self.floweysong)
    self.sprite_index = 175s
    stog.alarm[1s] = 60s
    self.conversation = 11s
0x0002D4:
    if !(== self.conversation 9s) goto 0x000340
0x0002E8:
    stog.alarm[4s] = 30s
    self.sprite_index = 172s
    call (caster_set_pitch[]:int32 (var 0.9d) self.floweysong)
    self.conversation = 9.1d
0x000340:
    if !(== self.conversation 7s) goto 0x000450
0x000354:
    pushenv (int32 self.blcon) 0x000370
0x000364:
    call (instance_destroy[]:int32 )
0x000370:
    popenv 0x000364
0x000374:
    self.sprite_index = 166s
    self.i = 0s
    if !(!= self.i 5s) goto 0x000444
0x0003A0:
    self.ddd = (instance_find[]:int32 self.i (var 609s))
    push (int32 self.ddd):blonicx
    stog.x* = (int32 self.ddd)
    push (int32 self.ddd):blonicy
    stog.y* = (int32 self.ddd)
    push 1s
    stog.attackyou* = (int32 self.ddd)
    self.i = (+ self.i 1s)
    goto 0x00038C
0x000444:
    self.conversation = 8s
0x000450:
    if !(== self.conversation 5s) goto 0x0004B4
0x000464:
    call (caster_set_pitch[]:int32 (var 0.95d) self.floweysong)
    self.sprite_index = 171s
    self.conversation = 6s
    stog.alarm[3s] = 30s
0x0004B4:
    if !(== self.conversation 3s) goto 0x000500
0x0004C8:
    pushenv (int32 self.blcon) 0x0004E4
0x0004D8:
    call (instance_destroy[]:int32 )
0x0004E4:
    popenv 0x0004D8
0x0004E8:
    self.image_index = 0s
    self.image_speed = 0s
0x000500:
    if !(== self.conversation 2s) goto 0x00057C
0x000514:
    self.sprite_index = 166s
    [obj_friendlypellet].attackyou = 1s
    global.msc = 668s
    self.blconwriter = (instance_create[]:int32 (var 782s) (+ 187.y 10s) (+ 187.x 40s))
    self.conversation = 3s
0x00057C:
    if !(== self.conversation 1.5d) goto 0x0007F4
0x000598:
    self.blcon = (instance_create[]:int32 (var 187s) self.y (+ self.x self.sprite_width))
    global.msc = 667s
    self.blconwriter = (instance_create[]:int32 (var 782s) (+ 187.y 10s) (+ 187.x 40s))
    self.conversation = 2s
    self.sprite_index = 169s
    call (instance_create[]:int32 (var 609s) (+ self.y (/ self.sprite_width (double 2s))) (+ (- self.x 5s) (/ self.sprite_width (double 2s))))
    call (instance_create[]:int32 (var 609s) (+ self.y (/ self.sprite_width (double 2s))) (+ (- self.x 5s) (/ self.sprite_width (double 2s))))
    call (instance_create[]:int32 (var 609s) (+ self.y (/ self.sprite_width (double 2s))) (+ (- self.x 5s) (/ self.sprite_width (double 2s))))
    call (instance_create[]:int32 (var 609s) (+ self.y (/ self.sprite_width (double 2s))) (+ (- self.x 5s) (/ self.sprite_width (double 2s))))
    call (instance_create[]:int32 (var 609s) (+ self.y (/ self.sprite_width (double 2s))) (+ (- self.x 5s) (/ self.sprite_width (double 2s))))
0x0007F4:
    if !(== self.conversation 1s) goto 0x00087C
0x000808:
    self.sprite_index = 168s
    self.conversation = 1.5d
    pushenv (int32 self.blcon) 0x000844
0x000838:
    call (instance_destroy[]:int32 )
0x000844:
    popenv 0x000838
0x000848:
    call (instance_create[]:int32 (var 202s) (+ self.y 10s) (+ self.x 70s))
0x00087C:
    if !(== self.conversation 9.5d) goto 0x0008F8
0x000898:
    stog.alarm[7s] = 80s
    [OBJ_WRITER].halt = 3s
    pushenv (int32 self.blcon) 0x0008D4
0x0008C8:
    call (instance_destroy[]:int32 )
0x0008D4:
    popenv 0x0008C8
0x0008D8:
    self.conversation = 9.6d
    self.pitchlower = 1s
0x0008F8:
    if !(== self.conversation 9.6d) goto 0x0009C0
0x000914:
    self.pitchlower = (- self.pitchlower 0.02d)
    if !(> self.pitchlower -0.5d) goto 0x0009C0
0x000950:
    call (caster_set_pitch[]:int32 (+ 0.65d (/ self.pitchlower (double 4s))) self.floweysong)
    call (caster_set_volume[]:int32 (+ 0.5d (/ self.pitchlower (double 2s))) self.floweysong)
0x0009C0:
    if !(== global.faceemotion 1s) goto 0x0009E0
0x0009D4:
    self.sprite_index = 170s
0x0009E0:
    if !(== global.faceemotion 2s) goto 0x000A00
0x0009F4:
    self.sprite_index = 166s
0x000A00:
    if !(== self.conversation 13s) goto 0x000A8C
0x000A14:
    if !(< 748.x 758.x) goto 0x000A3C
0x000A2C:
    [obj_fakeheart].x = 758.x
0x000A3C:
    if !(> 748.x 760.x) goto 0x000A64
0x000A54:
    [obj_fakeheart].x = 760.x
0x000A64:
    if !(< 748.y 759.y) goto 0x000A8C
0x000A7C:
    [obj_fakeheart].y = 759.y
0x000A8C:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x000AC4
0x000AA4:
    if !(== self.conversation 1s) goto 0x000AC4
0x000AB8:
    call (scr_textskip[]:int32 )
0x000AC4:
    exit
