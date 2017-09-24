0x000000:
    self.col = (- self.col 1s)
    self.pop = (scr_monstersum[]:int32 )
    self.first = (- self.first 1s)
    if !(< self.first 0s) goto 0x0000D8
0x000054:
    self.turnamt = 0.3d
    if !(== self.zap 1s) goto 0x000090
0x00007C:
    self.turnamt = 0.6d
0x000090:
    if !(== self.zap 1s) goto 0x0000B8
0x0000A4:
    push (> self.pop 1s)
    goto 0x0000BC
0x0000B8:
    push 0s
0x0000BC:
    if !pop goto 0x0000D4
0x0000C0:
    self.turnamt = 0.5d
0x0000D4:
    goto 0x0000EC
0x0000D8:
    self.turnamt = 0.2d
0x0000EC:
    self.newdir = (point_direction[]:int32 743.y 743.x self.y self.x)
    self.hspeed = (+ self.hspeed (lengthdir_x[]:int32 self.newdir self.turnamt))
    self.vspeed = (+ self.vspeed (lengthdir_y[]:int32 self.newdir self.turnamt))
    if !(== self.zap 0s) goto 0x0001A8
0x000188:
    if !(> self.speed 6s) goto 0x0001A8
0x00019C:
    self.speed = 6s
0x0001A8:
    if !(== self.zap 1s) goto 0x000210
0x0001BC:
    if !(> self.speed 7s) goto 0x0001DC
0x0001D0:
    self.speed = 7s
0x0001DC:
    if !(> self.pop 1s) goto 0x000210
0x0001F0:
    if !(> self.speed 6s) goto 0x000210
0x000204:
    self.speed = 6s
0x000210:
    if !(== self.zap 2s) goto 0x000244
0x000224:
    if !(> self.speed 7s) goto 0x000244
0x000238:
    self.speed = 7s
0x000244:
    push self.x
    if !(> -5s (+ 1s:idealborder 6s)) goto 0x00028C
0x00026C:
    push -5s
    self.x = (- 0s:idealborder 15s)
0x00028C:
    push self.x
    if !(< -5s (- 0s:idealborder 20s)) goto 0x0002D4
0x0002B4:
    push -5s
    self.x = (+ 1s:idealborder 2s)
0x0002D4:
    push self.y
    if !(> -5s (+ 3s:idealborder 6s)) goto 0x00031C
0x0002FC:
    push -5s
    self.y = (- 2s:idealborder 15s)
0x00031C:
    push self.y
    if !(< -5s (- 2s:idealborder 20s)) goto 0x000364
0x000344:
    push -5s
    self.y = (+ 3s:idealborder 2s)
0x000364:
    if !(== self.king 1s) goto 0x00038C
0x000378:
    push (== self.zap 0s)
    goto 0x000390
0x00038C:
    push 0s
0x000390:
    if !pop goto 0x0005A4
0x000394:
    if !(== 743.x 743.xprevious) goto 0x0003C4
0x0003AC:
    push (== 743.y 743.yprevious)
    goto 0x0003C8
0x0003C4:
    push 0s
0x0003C8:
    if !pop goto 0x000494
0x0003CC:
    global.turntimer = (+ global.turntimer 1s)
    self.time = (+ self.time 1s)
    if !(> self.time 450s) goto 0x000424
0x000410:
    push (== self.heal 0s)
    goto 0x000428
0x000424:
    push 0s
0x000428:
    if !pop goto 0x000490
0x00042C:
    [obj_monsterparent].mercymod = 400s
    call (snd_play[]:int32 (var 111s))
    push 436s
    stog.sprite_index* = (int32 self.object_index)
    push 1s
    stog.heal* = (int32 self.object_index)
    call (caster_pause[]:int32 (var -3s))
0x000490:
    goto 0x0005A4
0x000494:
    if !(== self.heal 1s) goto 0x0005A4
0x0004A8:
    call (snd_play[]:int32 (var 109s))
    if !(< global.hp global.maxhp) goto 0x000514
0x0004D4:
    global.hp = (+ global.hp 1s)
    if !(> global.hp global.maxhp) goto 0x000514
0x000504:
    global.hp = global.maxhp
0x000514:
    push -5s
    if !(!= 393s:flag 0s) goto 0x00054C
0x000530:
    push -5s
    call (caster_free[]:int32 393s:flag)
0x00054C:
    call (caster_resume[]:int32 (var -3s))
    global.turntimer = -1s
    global.mnfight = 3s
    global.myfight = -1s
    pushenv (int32 self.object_index) 0x0005A0
0x000594:
    call (instance_destroy[]:int32 )
0x0005A0:
    popenv 0x000594
0x0005A4:
    exit
