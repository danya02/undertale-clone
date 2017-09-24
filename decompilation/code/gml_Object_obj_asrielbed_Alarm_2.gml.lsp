0x000000:
    if !(>= global.plot 24s) goto 0x000028
0x000014:
    push (< self.jump 5s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0001C0
0x000030:
    global.typer = 31s
    global.faceemotion = 0s
    global.facechoice = 0s
    global.msc = 0s
    stog.msg[0s] = (+ (+ "* " global.charname) "^1, please.../")
    stog.msg[1s] = "* Wake up!/"
    stog.msg[2s] = "* You are the future&  of humans and&  monsters.../%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x000118
0x0000DC:
    global.typer = 5s
    stog.msg[0s] = "* (It felt strange to lie&  in the bed.)/"
    stog.msg[1s] = "* (It feels entirely too&  small for you now.)/%%"
0x000118:
    push 0s
    push 919s
    stog.idealvolume[] = 0s
    push 0s
    push 919s
    stog.idealvolume[] = 1s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    pushenv 779s 0x00017C
0x00016C:
    self.depth = -999999
0x00017C:
    popenv 0x00016C
0x000180:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0001B4
0x000198:
    pushenv 782s 0x0001B0
0x0001A0:
    self.depth = -9999999
0x0001B0:
    popenv 0x0001A0
0x0001B4:
    self.jump = 5s
0x0001C0:
    if !(== self.jump 5s) goto 0x0001E8
0x0001D4:
    stog.alarm[2s] = 2s
0x0001E8:
    if !(== (instance_exists[]:int32 (var 779s)) 0s) goto 0x000394
0x000204:
    self.jump = 6s
    stog.background_visible[1s] = 0s
    stog.background_visible[0s] = 1s
    if !(< global.plot 20s) goto 0x000260
0x00024C:
    stog.background_visible[2s] = 1s
0x000260:
    global.facing = 3s
    [obj_mainchara].x = 200s
    [obj_mainchara].y = 104s
    global.hp = global.maxhp
    if !(bool (instance_exists[]:int32 (var 149s))) goto 0x0002C4
0x0002AC:
    pushenv 149s 0x0002C0
0x0002B4:
    call (instance_destroy[]:int32 )
0x0002C0:
    popenv 0x0002B4
0x0002C4:
    call (instance_create[]:int32 (var 147s) (var 0s) (var 0s))
    push 0s
    push 919s
    stog.idealvolume[] = 0s
    push 1s
    push 919s
    stog.idealvolume[] = 1s
    push -5s
    if !(== 103s:flag 0s) goto 0x000340
0x00032C:
    push (< global.plot 20s)
    goto 0x000344
0x000340:
    push 0s
0x000344:
    if !pop goto 0x000380
0x000348:
    stog.flag[103s] = 1s
    call (instance_create[]:int32 (var 848s) (var 132s) (var 142s))
0x000380:
    stog.alarm[3s] = 60s
0x000394:
    exit
