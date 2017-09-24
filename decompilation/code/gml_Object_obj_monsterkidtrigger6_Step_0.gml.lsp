0x000000:
    if !(== self.con 0s) goto 0x00002C
0x000014:
    push (bool (instance_exists[]:int32 (var 1570s)))
    goto 0x000030
0x00002C:
    push 0s
0x000030:
    if !pop goto 0x0000BC
0x000034:
    if !(> 1570.x 120s) goto 0x0000BC
0x000048:
    pushenv (int32 self.mkid) 0x0000AC
0x000058:
    self.follow = 99s
    call (move_towards_point[]:int32 (var 4s) (var 100s) (var 320s))
    self.sprite_index = self.rsprite
    self.image_speed = 0.25d
0x0000AC:
    popenv 0x000058
0x0000B0:
    self.con = 1s
0x0000BC:
    if !(== self.con 1s) goto 0x00021C
0x0000D0:
    pushenv (int32 self.mkid) 0x0000F0
0x0000E0:
    self.sprite_index = self.rsprite
0x0000F0:
    popenv 0x0000E0
0x0000F4:
    self.ganer = (+ self.ganer 0.334d)
    if !(bool (instance_exists[]:int32 self.mkid)) goto 0x000148
0x00012C:
    push self.ganer
    stog.image_index* = (int32 self.mkid)
0x000148:
    if !(>= (int32 self.mkid):x 316s) goto 0x00021C
0x000168:
    self.mkid2 = self.mkid
    self.mkid = (instance_create[]:int32 (var 1481s) (int32 self.mkid2):y (int32 self.mkid2):x)
    push 0s
    stog.direction* = (int32 self.mkid)
    pushenv (int32 self.mkid) 0x0001EC
0x0001E0:
    self.sprite_index = 1399s
0x0001EC:
    popenv 0x0001E0
0x0001F0:
    pushenv (int32 self.mkid2) 0x00020C
0x000200:
    call (instance_destroy[]:int32 )
0x00020C:
    popenv 0x000200
0x000210:
    self.con = 2s
0x00021C:
    if !(== self.con 4s) goto 0x000250
0x000230:
    self.con = 5s
    stog.alarm[4s] = 120s
0x000250:
    if !(== self.con 6s) goto 0x000294
0x000264:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000294
0x000280:
    push (== global.interact 0s)
    goto 0x000298
0x000294:
    push 0s
0x000298:
    if !pop goto 0x0002D0
0x00029C:
    self.unbuffer = (+ self.unbuffer 1s)
    pushenv 1570s 0x0002C8
0x0002BC:
    self.uncan = 1s
0x0002C8:
    popenv 0x0002BC
0x0002CC:
    goto 0x000308
0x0002D0:
    if !(== self.con 6s) goto 0x000308
0x0002E4:
    self.unbuffer = 0s
    pushenv 1570s 0x000304
0x0002F8:
    self.uncan = 0s
0x000304:
    popenv 0x0002F8
0x000308:
    if !(== self.con 6s) goto 0x000360
0x00031C:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000360
0x000338:
    if !(== global.interact 0s) goto 0x000360
0x00034C:
    push (>= self.unbuffer 4s)
    goto 0x000364
0x000360:
    push 0s
0x000364:
    if !pop goto 0x000498
0x000368:
    pushenv 1570s 0x00037C
0x000370:
    self.uncan = 1s
0x00037C:
    popenv 0x000370
0x000380:
    pushenv 779s 0x000394
0x000388:
    call (instance_destroy[]:int32 )
0x000394:
    popenv 0x000388
0x000398:
    pushenv 782s 0x0003AC
0x0003A0:
    call (instance_destroy[]:int32 )
0x0003AC:
    popenv 0x0003A0
0x0003B0:
    pushenv 783s 0x0003C4
0x0003B8:
    call (instance_destroy[]:int32 )
0x0003C4:
    popenv 0x0003B8
0x0003C8:
    global.interact = 1s
    pushenv (int32 self.mkid) 0x000418
0x0003E4:
    self.fun = 1s
    call (scr_npc_watch[]:int32 (var 0s))
    self.image_speed = 0.25d
0x000418:
    popenv 0x0003E4
0x00041C:
    stog.msg[0s] = "* Yo^1, you wanna see&  Undyne^1, right...?/"
    stog.msg[1s] = "* Climb on my shoulders./%%"
    push -5s
    if !(== 85s:flag 1s) goto 0x000480
0x000468:
    stog.msg[1s] = "* Put up your umbrella and&  climb on my shoulders./%%"
0x000480:
    call (scr_regulartext[]:int32 )
    self.con = 7s
0x000498:
    if !(== self.con 7s) goto 0x0004C8
0x0004AC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0004CC
0x0004C8:
    push 0s
0x0004CC:
    if !pop goto 0x000538
0x0004D0:
    stog.alarm[7s] = 5s
    global.plot = 112s
    push 1s
    stog.fun* = (int32 self.mkid)
    push 1398s
    stog.sprite_index* = (int32 self.mkid)
    self.con = 8s
    global.interact = 0s
0x000538:
    if !(== self.con 10s) goto 0x000620
0x00054C:
    global.phasing = 1s
    global.interact = 1s
    push 0s
    stog.solid* = (int32 self.mkid)
    [obj_mainchara].facing = 1s
    global.facing = 1s
    [obj_mainchara].image_speed = 0.25d
    self.difx = (- (int32 self.mkid):x 1570.x)
    self.dify = (- (- (int32 self.mkid):y 18s) 1570.y)
    self.con = 11s
    stog.alarm[4s] = 10s
0x000620:
    if !(== self.con 11s) goto 0x000684
0x000634:
    [obj_mainchara].x = (+ 1570.x (/ self.difx (double 10s)))
    [obj_mainchara].y = (+ 1570.y (/ self.dify (double 10s)))
0x000684:
    if !(== self.con 12s) goto 0x0006E8
0x000698:
    self.con = 13s
    stog.alarm[4s] = 20s
    self.difx = (- 345s 1570.x)
    self.dify = (- 70s 1570.y)
0x0006E8:
    if !(== self.con 14s) goto 0x00071C
0x0006FC:
    self.con = 15s
    stog.alarm[4s] = 10s
0x00071C:
    if !(== self.con 15s) goto 0x000780
0x000730:
    [obj_mainchara].x = (+ 1570.x (/ self.difx (double 10s)))
    [obj_mainchara].y = (+ 1570.y (/ self.dify (double 10s)))
0x000780:
    if !(== self.con 16s) goto 0x0007C0
0x000794:
    self.con = 17s
    stog.alarm[4s] = 30s
    [obj_mainchara].image_speed = 0s
0x0007C0:
    if !(== self.con 18s) goto 0x000834
0x0007D4:
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 19s
    stog.alarm[4s] = 20s
0x000834:
    if !(== self.con 20s) goto 0x000958
0x000848:
    self.side = 1s
    stog.x* = (- (int32 self.ledgewall):x 20s)
    push 0.25d
    stog.image_speed* = (int32 self.mkid)
    stog.msg[0s] = "* Yo^1, you go on ahead./"
    stog.msg[1s] = "* Don't worry about me^1.&* I always find a way to&  get through!/%%"
    if !(>= (scr_murderlv[]:int32 ) 9s) goto 0x0008FC
0x0008E0:
    push (int32 self.ledgewall)
    push -5s
    push (== 27s:flag 0s)
    goto 0x000900
0x0008FC:
    push 0s
0x000900:
    if !pop goto 0x000934
0x000904:
    stog.msg[0s] = "* Owww..^1.&* Yo^1, try being a little&  less rough^1, haha./"
    stog.msg[1s] = "* Anyway^1, I'll look for&  another way through^1.&* Later!/%%"
0x000934:
    call (scr_regulartext[]:int32 )
    self.con = 21s
    global.phasing = 0s
0x000958:
    if !(== self.con 21s) goto 0x000988
0x00096C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00098C
0x000988:
    push 0s
0x00098C:
    if !pop goto 0x0009F8
0x000990:
    push 180s
    stog.direction* = (int32 self.mkid)
    push 0s
    stog.fun* = (int32 self.mkid)
    push -5s
    stog.hspeed* = (int32 self.mkid)
    self.con = 25s
    stog.alarm[4s] = 12s
0x0009F8:
    if !(== self.con 26s) goto 0x000AA0
0x000A0C:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    push 1s
    stog.fun* = (int32 self.mkid)
    push 0s
    stog.image_index* = (int32 self.mkid)
    push 0.334d
    stog.image_speed* = (int32 self.mkid)
    push 1390s
    stog.sprite_index* = (int32 self.mkid)
    self.con = 49.2d
0x000AA0:
    if !(== self.con 49.2d) goto 0x000B64
0x000ABC:
    if !(>= (int32 self.mkid):image_index 19s) goto 0x000B64
0x000ADC:
    push 0s
    stog.image_index* = (int32 self.mkid)
    stog.x* = (- (int32 self.mkid):x 13s)
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 22s
    stog.alarm[4s] = 25s
0x000B64:
    push (int32 self.mkid)
    if !(== self.con 23s) goto 0x000BC8
0x000B78:
    push -3s
    stog.hspeed* = (int32 self.mkid)
    global.plot = 113s
    stog.flag[91s] = 10s
    global.interact = 0s
    self.con = 24s
0x000BC8:
    exit
