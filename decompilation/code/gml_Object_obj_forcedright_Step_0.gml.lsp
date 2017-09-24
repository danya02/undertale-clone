0x000000:
    if !(== self.t 1s) goto 0x0000A4
0x000014:
    [obj_mainchara].image_speed = 0.25d
    if !(> self.vol 0.06d) goto 0x000084
0x000044:
    self.vol = (- self.vol 0.04d)
    call (caster_set_volume[]:int32 self.vol global.currentsong)
    goto 0x0000A4
0x000084:
    self.vol = 0s
    call (caster_pause[]:int32 global.currentsong)
0x0000A4:
    if !(== self.t 4s) goto 0x000170
0x0000B8:
    self.dogmeander = (caster_load[]:int32 (var "music/dogmeander.ogg"))
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.interact = 1s
    stog.msg[0s] = "* What's that smell^1?&* (Where's that smell?)/"
    stog.msg[1s] = "* If you're a smell^1...&* (... identify yoursmellf!)/%%"
    self.t = 5s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000170:
    if !(== self.t 5s) goto 0x0001A0
0x000184:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0001A4
0x0001A0:
    push 0s
0x0001A4:
    if !pop goto 0x000260
0x0001A8:
    call (caster_play[]:int32 (var 1.4d) (var 1s) self.dogmeander)
    self.t = 6s
    pushenv (int32 self.dog1) 0x00021C
0x0001F0:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 37s))
0x00021C:
    popenv 0x0001F0
0x000220:
    pushenv (int32 self.dog2) 0x00025C
0x000230:
    call (path_start[]:int32 (var 0s) (var 0s) (var 4s) (var 36s))
0x00025C:
    popenv 0x000230
0x000260:
    if !(== self.t 6s) goto 0x00028C
0x000274:
    push (bool (instance_exists[]:int32 (var 996s)))
    goto 0x000290
0x00028C:
    push 0s
0x000290:
    if !pop goto 0x000304
0x000294:
    if !(== (int32 self.dog1):path_position 1s) goto 0x000304
0x0002B4:
    push 0s
    stog.path_speed* = (int32 self.dog1)
    push 0s
    stog.path_speed* = (int32 self.dog2)
    stog.alarm[2s] = 30s
    self.t = 7s
0x000304:
    if !(== self.t 8s) goto 0x0003D4
0x000318:
    call (caster_free[]:int32 self.dogmeander)
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hmmm..^1.&* Here's that weird smell.../"
    stog.msg[1s] = "* It makes me want to&  eliminate./"
    stog.msg[2s] = "* (... Eliminate YOU!)/%%"
    self.t = 9s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0003D4:
    if !(== self.t 9s) goto 0x000404
0x0003E8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000408
0x000404:
    push 0s
0x000408:
    if !pop goto 0x000468
0x00040C:
    global.battlegroup = 25s
    stog.flag[200s] = 0s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.t = 10s
0x000468:
    if !(== global.plot 50s) goto 0x000490
0x00047C:
    push (== self.t 10s)
    goto 0x000494
0x000490:
    push 0s
0x000494:
    if !pop goto 0x000548
0x000498:
    global.interact = 1s
    push -5s
    if !(== 53s:flag 1s) goto 0x000528
0x0004C0:
    global.plot = 51s
    global.interact = 0s
    pushenv (int32 self.dog1) 0x0004F4
0x0004E8:
    call (instance_destroy[]:int32 )
0x0004F4:
    popenv 0x0004E8
0x0004F8:
    pushenv (int32 self.dog2) 0x000514
0x000508:
    call (instance_destroy[]:int32 )
0x000514:
    popenv 0x000508
0x000518:
    call (instance_destroy[]:int32 )
    exit
0x000528:
    stog.alarm[2s] = 11s
    self.t = 11s
0x000548:
    if !(== self.t 11s) goto 0x000568
0x00055C:
    global.interact = 1s
0x000568:
    if !(== global.plot 50s) goto 0x000590
0x00057C:
    push (== self.t 12s)
    goto 0x000594
0x000590:
    push 0s
0x000594:
    if !pop goto 0x000684
0x000598:
    global.mercy = 0s
    global.interact = 1s
    push -5s
    if (== 53s:flag 0s) goto 0x0005E8
0x0005CC:
    push -5s
    push (== 53s:flag 2s)
    goto 0x0005EC
0x0005E8:
    push 1s
0x0005EC:
    if !pop goto 0x000684
0x0005F0:
    stog.msg[0s] = "* Dogs can pet other dogs??^1?&* (A new world has opened&  up for us...)/"
    stog.msg[1s] = "* Thanks^1, weird puppy!/%%"
    push -5s
    if !(== 53s:flag 2s) goto 0x00066C
0x00063C:
    stog.msg[0s] = "* Weird smells can bring&  good things..^1.&* (Friendly fun fetch!)/"
    stog.msg[1s] = "* Thanks^1, weird smell^1!&* (It sure was fun to&  \"stick\" together!)/%%"
0x00066C:
    self.t = 14s
    call (scr_regulartext[]:int32 )
0x000684:
    if !(== self.t 14s) goto 0x0006B4
0x000698:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0006B8
0x0006B4:
    push 0s
0x0006B8:
    if !pop goto 0x000718
0x0006BC:
    self.vol = 99s
    push 4s
    stog.vspeed* = (int32 self.dog1)
    push 4s
    stog.vspeed* = (int32 self.dog2)
    stog.alarm[2s] = 40s
    self.t = 15s
0x000718:
    if !(== self.t 15s) goto 0x000780
0x00072C:
    if !(< self.vol self.vol1) goto 0x000780
0x000744:
    self.vol = (+ self.vol 0.03d)
    call (caster_set_volume[]:int32 self.vol global.currentsong)
0x000780:
    if !(== self.t 16s) goto 0x0007B8
0x000794:
    global.interact = 0s
    global.plot = 51s
    call (instance_destroy[]:int32 )
0x0007B8:
    exit
