0x000000:
    if !(== self.con 1s) goto 0x000050
0x000014:
    self.con = 0.1d
    stog.alarm[4s] = 30s
    call (snd_play[]:int32 (var 104s))
0x000050:
    if !(== self.con 1.1d) goto 0x000154
0x00006C:
    global.facechoice = 0s
    global.faceemotion = 0s
    call (caster_pause[]:int32 global.currentsong)
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "* (Ring... ring...)/"
    stog.msg[1s] = "* Hello^1!&* Can I speak to G.../"
    stog.msg[2s] = "* ...&* Wait a second./"
    stog.msg[3s] = "* Is this the wrong number?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
0x000154:
    if !(== self.con 2s) goto 0x000184
0x000168:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x00024C
0x00018C:
    self.wrns = (caster_loop[]:int32 (var 1s) (var 0.8d) (var 413s))
    stog.msg[0s] = "* Oh it's the wrong number^1!&* The wrong number song!/"
    stog.msg[1s] = "* We're very very sorry that&  we got it wrong!/"
    stog.msg[2s] = "* Oh it's the wrong number^1!&* The wrong number song!/"
    stog.msg[3s] = "* We're very very sorry that&  we got it wrong!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3s
0x00024C:
    if !(== self.con 3s) goto 0x00027C
0x000260:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000280
0x00027C:
    push 0s
0x000280:
    if !pop goto 0x0002E0
0x000284:
    call (caster_stop[]:int32 self.wrns)
    stog.msg[0s] = "* (Click...)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 4s
0x0002E0:
    if !(== self.con 4s) goto 0x000310
0x0002F4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000314
0x000310:
    push 0s
0x000314:
    if !pop goto 0x000364
0x000318:
    call (caster_resume[]:int32 global.currentsong)
    self.con = 5s
    stog.flag[277s] = 1s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000364:
    exit
