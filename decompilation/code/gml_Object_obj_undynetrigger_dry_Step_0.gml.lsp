0x000000:
    if !(== self.con 1s) goto 0x000140
0x000014:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    self.undyne = (instance_create[]:int32 (var 1117s) (var 60s) (var -40s))
    push 1425s
    stog.rsprite* = (int32 self.undyne)
    push 1427s
    stog.dsprite* = (int32 self.undyne)
    push 1426s
    stog.lsprite* = (int32 self.undyne)
    push 1432s
    stog.usprite* = (int32 self.undyne)
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push 0.1d
    stog.image_speed* = (int32 self.undyne)
    self.con = 2s
    stog.alarm[4s] = 20s
0x000140:
    if !(== self.con 3s) goto 0x0001BC
0x000154:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 4s
    stog.alarm[4s] = 40s
0x0001BC:
    if !(== self.con 5s) goto 0x000264
0x0001D0:
    self.walked = (+ self.walked 1s)
    if !(< self.walked 3s) goto 0x000258
0x0001FC:
    self.con = 2s
    stog.alarm[4s] = 20s
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    goto 0x000264
0x000258:
    self.con = 7s
0x000264:
    if !(== self.con 7s) goto 0x000338
0x000278:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    global.facechoice = 5s
    global.faceemotion = 1s
    global.typer = 37s
    stog.msg[0s] = "* Armor..^1. so..^1. hot..^1./"
    stog.msg[1s] = "* But I can't..^1.&* Give up.../%%"
    global.msc = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
0x000338:
    if !(== self.con 8s) goto 0x000368
0x00034C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00036C
0x000368:
    push 0s
0x00036C:
    if !pop goto 0x0003D0
0x000370:
    push 0.5d
    stog.hspeed* = (int32 self.undyne)
    push 0.1d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 40s
    self.con = 9s
0x0003D0:
    if !(== self.con 10s) goto 0x00044C
0x0003E4:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    stog.alarm[4s] = 60s
    self.con = 11s
0x00044C:
    if !(== self.con 12s) goto 0x0004E0
0x000460:
    call (snd_play[]:int32 (var 106s))
    self.undyne2 = (instance_create[]:int32 (var 1295s) (int32 self.undyne):y (int32 self.undyne):x)
    pushenv (int32 self.undyne) 0x0004D0
0x0004C4:
    call (instance_destroy[]:int32 )
0x0004D0:
    popenv 0x0004C4
0x0004D4:
    self.con = 13s
0x0004E0:
    if !(== self.con 13s) goto 0x000540
0x0004F4:
    stog.flag[17s] = 0s
    global.interact = 0s
    global.plot = 122s
    stog.flag[350s] = 2s
    call (instance_destroy[]:int32 )
0x000540:
    exit
