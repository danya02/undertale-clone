0x000000:
    self.b_buffer = 0s
    if !(== self.myinteract 1s) goto 0x00005C
0x000020:
    if !(== global.interact 0s) goto 0x00005C
0x000034:
    if !(== self.tangible 1s) goto 0x00005C
0x000048:
    push (== self.con 0s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x000088
0x000064:
    global.interact = 1s
    self.con = 1s
    self.myinteract = 0s
0x000088:
    if !(== self.con 1s) goto 0x000124
0x00009C:
    pushenv 1225s 0x0000B0
0x0000A4:
    self.b_buffer = 50s
0x0000B0:
    popenv 0x0000A4
0x0000B4:
    self.con = 2s
    stog.alarm[4s] = 33s
    stog.flag[15s] = 1s
    global.battlegroup = (+ 69s self.bombtype)
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
0x000124:
    if !(== self.con 3s) goto 0x000158
0x000138:
    self.con = 4s
    stog.alarm[4s] = 12s
0x000158:
    if !(== self.con 4s) goto 0x000184
0x00016C:
    self.visible = 0s
    global.interact = 1s
0x000184:
    if !(== self.con 5s) goto 0x0002F0
0x000198:
    self.con = 90s
    stog.flag[15s] = 0s
    push -5s
    stog.flag[(+ 395s:flag 1s)] = 395s
    self.anti = 0s
    if !(bool (instance_exists[]:int32 (var 1226s))) goto 0x000220
0x000200:
    if !(>= 1226.dx 120s) goto 0x000220
0x000214:
    self.anti = 1s
0x000220:
    if !(== 1224.failure 1s) goto 0x000240
0x000234:
    self.anti = 1s
0x000240:
    push -5s
    if !(== 395s:flag 1s) goto 0x000270
0x00025C:
    push (== self.anti 0s)
    goto 0x000274
0x000270:
    push 0s
0x000274:
    if !pop goto 0x000284
0x000278:
    self.con = 7s
0x000284:
    push -5s
    if !(== 395s:flag 5s) goto 0x0002B4
0x0002A0:
    push (== self.anti 0s)
    goto 0x0002B8
0x0002B4:
    push 0s
0x0002B8:
    if !pop goto 0x0002C8
0x0002BC:
    self.con = 60s
0x0002C8:
    push -5s
    if !(== 395s:flag 6s) goto 0x0002F0
0x0002E4:
    [obj_mettnewsevent].con = 160s
0x0002F0:
    if !(== self.con 7s) goto 0x0004CC
0x000304:
    global.facechoice = 6s
    global.faceemotion = 6s
    global.typer = 47s
    stog.msg[0s] = "* Error./%%"
    global.msc = 0s
    if (== self.bombtype 1s) goto 0x000388
0x000360:
    if (== self.bombtype 2s) goto 0x000388
0x000374:
    push (== self.bombtype 4s)
    goto 0x00038C
0x000388:
    push 1s
0x00038C:
    if !pop goto 0x0003C0
0x000390:
    stog.msg[0s] = "* Great job^1!&* Keep heading around the&  room!/"
    stog.msg[1s] = "* Try to go for the&  one in the bottom-&  left next!/%%"
0x0003C0:
    if !(== self.bombtype 3s) goto 0x000404
0x0003D4:
    stog.msg[0s] = "* Great job^1!&* Keep heading around the&  room!/"
    stog.msg[1s] = "* Try to go for the&  one in the top-&  right next!/%%"
0x000404:
    if !(== self.bombtype 5s) goto 0x000430
0x000418:
    stog.msg[0s] = "* Great job^1!&* Head to the left&  next!/%%"
0x000430:
    if !(== self.bombtype 6s) goto 0x00045C
0x000444:
    stog.msg[0s] = "* Great job^1!&* Head to the right&  next!/%%"
0x00045C:
    push -5s
    if !(== 288s:flag 1s) goto 0x00049C
0x000478:
    global.faceemotion = 1s
    stog.msg[0s] = "* You couldn't even&  get one bomb...!?/%%"
0x00049C:
    self.con = 90s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0004CC:
    if !(== self.con 60s) goto 0x000864
0x0004E0:
    [obj_mettnews_battleobj].watercancel = 1s
    global.facechoice = 6s
    global.faceemotion = 6s
    global.typer = 47s
    self.ex = 0s
    if !(== self.ex 0s) goto 0x00053C
0x000530:
    global.msc = 0s
0x00053C:
    if !(bool (instance_exists[]:int32 1224.newdog)) goto 0x000568
0x000554:
    push (!= self.bombtype 1s)
    goto 0x00056C
0x000568:
    push 0s
0x00056C:
    if !pop goto 0x00057C
0x000570:
    self.ex = 1s
0x00057C:
    if !(bool (instance_exists[]:int32 1224.newwater)) goto 0x0005A8
0x000594:
    push (!= self.bombtype 2s)
    goto 0x0005AC
0x0005A8:
    push 0s
0x0005AC:
    if !pop goto 0x0005BC
0x0005B0:
    self.ex = 2s
0x0005BC:
    if !(bool (instance_exists[]:int32 1224.newscript)) goto 0x0005E8
0x0005D4:
    push (!= self.bombtype 3s)
    goto 0x0005EC
0x0005E8:
    push 0s
0x0005EC:
    if !pop goto 0x0005FC
0x0005F0:
    self.ex = 3s
0x0005FC:
    if !(bool (instance_exists[]:int32 1224.newbasketball)) goto 0x000628
0x000614:
    push (!= self.bombtype 4s)
    goto 0x00062C
0x000628:
    push 0s
0x00062C:
    if !pop goto 0x00063C
0x000630:
    self.ex = 4s
0x00063C:
    if !(bool (instance_exists[]:int32 1224.newpresent)) goto 0x000668
0x000654:
    push (!= self.bombtype 5s)
    goto 0x00066C
0x000668:
    push 0s
0x00066C:
    if !pop goto 0x00067C
0x000670:
    self.ex = 5s
0x00067C:
    if !(bool (instance_exists[]:int32 1224.newgame)) goto 0x0006A8
0x000694:
    push (!= self.bombtype 6s)
    goto 0x0006AC
0x0006A8:
    push 0s
0x0006AC:
    if !pop goto 0x0006BC
0x0006B0:
    self.ex = 6s
0x0006BC:
    stog.msg[0s] = "* Error,/%%"
    if !(== self.ex 1s) goto 0x000700
0x0006E8:
    stog.msg[0s] = "* Great job^1!&* Head for the center^1!&* There's one left there!/%%"
0x000700:
    if !(== self.ex 2s) goto 0x000744
0x000714:
    stog.msg[0s] = "* Great job^1!&* Head for the center!/"
    stog.msg[1s] = "* I'm using^1, uh^1, EM fields&  to trap the glass of&  water there!/%%"
0x000744:
    if !(== self.ex 3s) goto 0x000770
0x000758:
    stog.msg[0s] = "* Great job^1!&* There's only one left&  in the bottom-right!/%%"
0x000770:
    if !(== self.ex 4s) goto 0x00079C
0x000784:
    stog.msg[0s] = "* Great job^1!&* There's only one left&  at the top!/%%"
0x00079C:
    if !(== self.ex 5s) goto 0x0007C8
0x0007B0:
    stog.msg[0s] = "* Great job^1!&* There's only one left&  at the top-right!/%%"
0x0007C8:
    if !(== self.ex 6s) goto 0x0007F4
0x0007DC:
    stog.msg[0s] = "* Great job^1!&* There's only one left&  at the bottom-left!/%%"
0x0007F4:
    push -5s
    if !(== 288s:flag 1s) goto 0x000834
0x000810:
    global.faceemotion = 1s
    stog.msg[0s] = "* It's..^1. it's.../%%"
0x000834:
    self.con = 90s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000864:
    if !(== self.con 90s) goto 0x000894
0x000878:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000898
0x000894:
    push 0s
0x000898:
    if !pop goto 0x0008CC
0x00089C:
    pushenv 1225s 0x0008B0
0x0008A4:
    self.b_buffer = 6s
0x0008B0:
    popenv 0x0008A4
0x0008B4:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0008CC:
    if !(== self.bombtype 2s) goto 0x0009A4
0x0008E0:
    if !(== self.cc 0s) goto 0x00092C
0x0008F4:
    self.cc = 1s
    call (path_start[]:int32 (var 0s) (var 1s) (var 8s) (var 35s))
0x00092C:
    if !(== self.watercancel 1s) goto 0x0009A4
0x000940:
    call (path_end[]:int32 )
    if !(> (distance_to_point[]:int32 (var 300s) (var 360s)) 20s) goto 0x000998
0x000970:
    call (move_towards_point[]:int32 (var 5s) (var 300s) (var 360s))
    goto 0x0009A4
0x000998:
    self.speed = 0s
0x0009A4:
    if !(== self.bombtype 3s) goto 0x000A34
0x0009B8:
    if !(== self.cc 0s) goto 0x0009E4
0x0009CC:
    self.hspeed = 5s
    self.cc = 1s
0x0009E4:
    if !(< self.x (- self.xstart 80s)) goto 0x000A10
0x000A04:
    self.hspeed = 5s
0x000A10:
    if !(> self.x self.xstart) goto 0x000A34
0x000A28:
    self.hspeed = -5s
0x000A34:
    if !(== self.bombtype 4s) goto 0x000B38
0x000A48:
    if !(== self.cc 0s) goto 0x000A74
0x000A5C:
    self.cc = 1s
    self.hspeed = 6s
0x000A74:
    if !(< self.x (- self.xstart 80s)) goto 0x000AA0
0x000A94:
    self.hspeed = 5s
0x000AA0:
    if !(> self.x (+ self.xstart 80s)) goto 0x000ACC
0x000AC0:
    self.hspeed = -5s
0x000ACC:
    self.siner = (+ self.siner 1s)
    self.ypl = (* (sin[]:int32 (/ self.siner (double 4s))) 6s)
    self.y = (+ self.y self.ypl)
    self.tangible = 1s
0x000B38:
    exit
