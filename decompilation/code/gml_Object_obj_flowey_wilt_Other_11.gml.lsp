0x000000:
    [obj_borderparent].visible = 0s
    self.writing = 1s
    if !(== self.con 12s) goto 0x0000C8
0x00002C:
    call (caster_free[]:int32 self.wind)
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 70s
    self.writing = 0s
    stog.msg[0s] = "\\M1I just can't understand.../%%"
    call (instance_create[]:int32 (var 782s) (- self.y 40s) (- self.x 50s))
    self.con = 16s
0x0000C8:
    if !(== self.con 11s) goto 0x00017C
0x0000DC:
    call (caster_set_volume[]:int32 (var 0.25d) self.wind)
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\M1I can't understand!/%%"
    call (instance_create[]:int32 (var 782s) (- self.y 40s) (- self.x 50s))
    self.con = 12s
0x00017C:
    if !(== self.con 10s) goto 0x000230
0x000190:
    call (caster_set_volume[]:int32 (var 0.5d) self.wind)
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\M1I can't understand./%%"
    call (instance_create[]:int32 (var 782s) (- self.y 40s) (- self.x 50s))
    self.con = 11s
0x000230:
    if !(== self.con 9s) goto 0x0002D8
0x000244:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\M1... why are you being.../"
    stog.msg[1s] = "\\M1... so nice to me?/%%"
    call (instance_create[]:int32 (var 782s) (- self.y 50s) (- self.x 60s))
    self.con = 10s
0x0002D8:
    if !(== self.con 8s) goto 0x000368
0x0002EC:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\M1... why?/%%"
    call (instance_create[]:int32 (var 782s) (- self.y 30s) (- self.x 20s))
    self.con = 9s
0x000368:
    if !(== self.con 7s) goto 0x0003F8
0x00037C:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\M1...?/%%"
    call (instance_create[]:int32 (var 782s) (- self.y 30s) (- self.x 20s))
    self.con = 8s
0x0003F8:
    if !(== self.con 6s) goto 0x000488
0x00040C:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 69s
    stog.msg[0s] = "\\M1.../%%"
    call (instance_create[]:int32 (var 782s) (- self.y 30s) (- self.x 20s))
    self.con = 7s
0x000488:
    if !(== self.con 5s) goto 0x000518
0x00049C:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 69s
    stog.msg[0s] = "\\M1I'll kill everyone you love./%%"
    call (instance_create[]:int32 (var 782s) (- self.y 40s) (- self.x 50s))
    self.con = 6s
0x000518:
    if !(== self.con 4s) goto 0x0005A8
0x00052C:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 69s
    stog.msg[0s] = "\\M1I'll kill everyone./%%"
    call (instance_create[]:int32 (var 782s) (- self.y 40s) (- self.x 50s))
    self.con = 5s
0x0005A8:
    if !(== self.con 3s) goto 0x00064C
0x0005BC:
    stog.flag[20s] = 0s
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 69s
    stog.msg[0s] = "I'll kill you./%%"
    call (instance_create[]:int32 (var 782s) (- self.y 40s) (- self.x 40s))
    self.con = 4s
0x00064C:
    if !(== self.con 2s) goto 0x0006F4
0x000660:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 69s
    stog.msg[0s] = "\\M1If you let me live.../"
    stog.msg[1s] = "\\M1I'll come back./%%"
    call (instance_create[]:int32 (var 782s) (- self.y 50s) (- self.x 40s))
    self.con = 3s
0x0006F4:
    if !(== self.con 1s) goto 0x00079C
0x000708:
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = "\\M1Sparing me won't change&anything./"
    stog.msg[1s] = "\\M1Killing me is the only&way to end this./%%"
    call (instance_create[]:int32 (var 782s) (- self.y 50s) (- self.x 60s))
    self.con = 2s
0x00079C:
    if !(== self.con 0s) goto 0x000868
0x0007B0:
    global.msc = 0s
    global.typer = 68s
    stog.msg[0s] = ".../"
    stog.msg[1s] = "\\E1What are you doing?/"
    stog.msg[2s] = "\\E2Do you really think I've&learned anything from this?/"
    stog.msg[3s] = "\\E3No./%%"
    call (instance_create[]:int32 (var 782s) (- self.y 50s) (- self.x 60s))
    self.con = 1s
0x000868:
    exit
