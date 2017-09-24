0x000000:
    if !(== self.con 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000124
0x000038:
    self.undyne = (instance_create[]:int32 (var 1117s) (var 80s) (var 520s))
    push 0s
    stog.direction* = (int32 self.undyne)
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    self.mkid = (instance_create[]:int32 (var 1115s) (var 60s) (var 730s))
    push 0s
    stog.visible* = (int32 self.mkid)
    self.con = 2s
    stog.alarm[4s] = 20s
    [obj_darkness_undyne].glowyes = 2s
    global.interact = 1s
    [obj_mainchara].cutscene = 1s
0x000124:
    if !(== self.con 2s) goto 0x000168
0x000138:
    global.interact = 1s
    push -1s
    stog.view_xview[(- 0s:view_xview 5s)] = 0s
0x000168:
    if !(== self.con 3s) goto 0x0001A8
0x00017C:
    global.facing = 3s
    self.con = 4s
    stog.alarm[4s] = 80s
0x0001A8:
    if !(== self.con 5s) goto 0x000214
0x0001BC:
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    self.con = 6s
    stog.alarm[4s] = 30s
0x000214:
    if !(== self.con 7s) goto 0x000278
0x000228:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 8s
    stog.alarm[4s] = 40s
0x000278:
    if !(== self.con 9s) goto 0x0002E4
0x00028C:
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    self.con = 10s
    stog.alarm[4s] = 30s
0x0002E4:
    if !(== self.con 11s) goto 0x000348
0x0002F8:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 12s
    stog.alarm[4s] = 40s
0x000348:
    if !(== self.con 13s) goto 0x0003A4
0x00035C:
    global.typer = 37s
    global.msc = 621s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 14s
0x0003A4:
    if !(== self.con 14s) goto 0x0003D4
0x0003B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003D8
0x0003D4:
    push 0s
0x0003D8:
    if !pop goto 0x000408
0x0003DC:
    global.interact = 1s
    self.con = 15s
    stog.alarm[4s] = 20s
0x000408:
    if !(== self.con 16s) goto 0x000494
0x00041C:
    global.interact = 1s
    push 1424s
    stog.sprite_index* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    call (snd_play[]:int32 (var 47s))
    self.con = 15.1d
    stog.alarm[4s] = 40s
0x000494:
    if !(== self.con 16.1d) goto 0x00055C
0x0004B0:
    self.rushf = (scr_marker[]:int32 (var 1423s) (int32 self.undyne):y (int32 self.undyne):x)
    push 0s
    stog.image_alpha* = (int32 self.rushf)
    push 4000s
    stog.depth* = (int32 self.rushf)
    call (snd_play[]:int32 (var 13s))
    self.con = 15.2d
    stog.alarm[4s] = 40s
0x00055C:
    if !(== self.con 15.2d) goto 0x0005C0
0x000578:
    pushenv (int32 self.rushf) 0x0005BC
0x000588:
    if !(< self.image_alpha 1s) goto 0x0005BC
0x00059C:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x0005BC:
    popenv 0x000588
0x0005C0:
    if !(== self.con 16.2d) goto 0x0005E8
0x0005DC:
    self.con = 18s
0x0005E8:
    if !(== self.con 18s) goto 0x000694
0x0005FC:
    pushenv (int32 self.rushf) 0x000618
0x00060C:
    call (instance_destroy[]:int32 )
0x000618:
    popenv 0x00060C
0x00061C:
    push 1423s
    stog.sprite_index* = (int32 self.undyne)
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push 0.2d
    stog.image_speed* = (int32 self.undyne)
    self.con = 17.1d
    stog.alarm[4s] = 10s
0x000694:
    if !(== self.con 18.1d) goto 0x000708
0x0006B0:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 30s
    self.con = 17.2d
0x000708:
    if !(== self.con 18.2d) goto 0x0007B4
0x000724:
    push 3s
    stog.hspeed* = (int32 self.undyne)
    self.con = 17.3d
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 3s
    stog.fun* = (int32 self.undyne)
    push 0.5d
    stog.image_speed* = (int32 self.undyne)
    stog.alarm[4s] = 28s
0x0007B4:
    if !(== self.con 18.3d) goto 0x000840
0x0007D0:
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    self.con = 17.4d
    stog.alarm[4s] = 30s
0x000840:
    if !(== self.con 18.4d) goto 0x0008B4
0x00085C:
    global.battlegroup = 200s
    self.b = (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    push 4s
    stog.claptimer* = (int32 self.b)
    self.con = 20s
0x0008B4:
    if !(== self.con 20s) goto 0x0008E4
0x0008C8:
    push (== (instance_exists[]:int32 (var 142s)) 0s)
    goto 0x0008E8
0x0008E4:
    push 0s
0x0008E8:
    if !pop goto 0x000950
0x0008EC:
    push 1s
    stog.visible* = (int32 self.mkid)
    push 4s
    stog.vspeed* = (int32 self.mkid)
    call (snd_play[]:int32 (var 22s))
    self.con = 21s
    stog.alarm[4s] = 11s
0x000950:
    if !(== self.con 22s) goto 0x000A3C
0x000964:
    global.typer = 5s
    global.msc = 0s
    stog.msg[0s] = "* Undyne!!^1!&* I'll help you fight!!!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 23s
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.vspeed* = (int32 self.mkid)
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):dtsprite
    stog.sprite_index* = (int32 self.mkid)
0x000A3C:
    if !(== self.con 23s) goto 0x000A6C
0x000A50:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A70
0x000A6C:
    push 0s
0x000A70:
    if !pop goto 0x000AD4
0x000A74:
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):dsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 24s
    stog.alarm[4s] = 30s
0x000AD4:
    if !(== self.con 25s) goto 0x000B30
0x000AE8:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 26s
    stog.alarm[4s] = 20s
0x000B30:
    if !(== self.con 27s) goto 0x000B8C
0x000B44:
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 28s
    stog.alarm[4s] = 20s
0x000B8C:
    if !(== self.con 29s) goto 0x000BE8
0x000BA0:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 30s
    stog.alarm[4s] = 40s
0x000BE8:
    if !(== self.con 31s) goto 0x000C44
0x000BFC:
    push (int32 self.mkid):rtsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 32s
    stog.alarm[4s] = 10s
0x000C44:
    if !(== self.con 33s) goto 0x000CD8
0x000C58:
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
    stog.msg[0s] = "* YO!!!!/"
    stog.msg[1s] = "* You did it!!^1!&* Undyne is RIGHT in front&  of you!!!/"
    stog.msg[2s] = "* You've got front row seats&  to her fight!!!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 34s
0x000CD8:
    if !(== self.con 34s) goto 0x000D08
0x000CEC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D0C
0x000D08:
    push 0s
0x000D0C:
    if !pop goto 0x000D70
0x000D10:
    push 0s
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 35s
    stog.alarm[4s] = 20s
0x000D70:
    if !(== self.con 36s) goto 0x000DCC
0x000D84:
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 37s
    stog.alarm[4s] = 20s
0x000DCC:
    if !(== self.con 38s) goto 0x000E28
0x000DE0:
    push (int32 self.mkid):lsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 39s
    stog.alarm[4s] = 20s
0x000E28:
    if !(== self.con 40s) goto 0x000E84
0x000E3C:
    push (int32 self.mkid):dtsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 41s
    stog.alarm[4s] = 30s
0x000E84:
    if !(== self.con 42s) goto 0x000F00
0x000E98:
    push 0.2d
    stog.image_speed* = (int32 self.mkid)
    stog.msg[0s] = "* ... wait./"
    stog.msg[1s] = "* Who's she fighting???/%%"
    call (scr_regulartext[]:int32 )
    self.con = 43s
0x000F00:
    if !(== self.con 43s) goto 0x000F30
0x000F14:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F34
0x000F30:
    push 0s
0x000F34:
    if !pop goto 0x000FB8
0x000F38:
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    push 3s
    stog.hspeed* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    self.con = 44s
    stog.alarm[4s] = 7s
0x000FB8:
    if !(== self.con 45s) goto 0x001078
0x000FCC:
    call (snd_play[]:int32 (var 112s))
    push 0s
    stog.hspeed* = (int32 self.undyne)
    push 0s
    stog.image_speed* = (int32 self.undyne)
    push 0s
    stog.image_index* = (int32 self.undyne)
    push 0s
    stog.visible* = (int32 self.mkid)
    push 1435s
    stog.sprite_index* = (int32 self.undyne)
    self.con = 46s
    stog.alarm[4s] = 20s
0x001078:
    if !(== self.con 47s) goto 0x00110C
0x00108C:
    push -2s
    stog.hspeed* = (int32 self.undyne)
    push 0.25d
    stog.image_speed* = (int32 self.undyne)
    stog.msg[0s] = "* H^1-hey!/"
    stog.msg[1s] = "* You aren't gonna tell my&  parents about this^1, are you?/%%"
    call (scr_regulartext[]:int32 )
    self.con = 48s
0x00110C:
    if !(== self.con 48s) goto 0x00113C
0x001120:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001140
0x00113C:
    push 0s
0x001140:
    if !pop goto 0x0011F8
0x001144:
    push (int32 self.undyne):x
    if !(< -1s (- 0s:view_xview 100s)) goto 0x0011F8
0x001178:
    pushenv (int32 self.undyne) 0x001194
0x001188:
    call (instance_destroy[]:int32 )
0x001194:
    popenv 0x001188
0x001198:
    pushenv (int32 self.mkid) 0x0011B4
0x0011A8:
    call (instance_destroy[]:int32 )
0x0011B4:
    popenv 0x0011A8
0x0011B8:
    self.con = 49s
    self.vol = 0s
    call (caster_stop[]:int32 global.currentsong)
    stog.alarm[4s] = 100s
0x0011F8:
    if !(== self.con 49s) goto 0x001230
0x00120C:
    push -1s
    stog.view_xview[(+ 0s:view_xview 1s)] = 0s
0x001230:
    if !(== self.con 50s) goto 0x0012B8
0x001244:
    pushenv 1570s 0x001258
0x00124C:
    self.uncan = 0s
0x001258:
    popenv 0x00124C
0x00125C:
    call (caster_loop[]:int32 (var 0.9d) (var 1s) global.currentsong)
    [obj_mainchara].cutscene = 0s
    global.interact = 0s
    global.plot = 118s
    self.con = 51s
0x0012B8:
    exit
