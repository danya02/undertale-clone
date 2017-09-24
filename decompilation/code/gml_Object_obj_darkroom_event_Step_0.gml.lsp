0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000364
0x000018:
    if (< 1570.x 440s) goto 0x000040
0x00002C:
    push (> 1570.x 460s)
    goto 0x000044
0x000040:
    push 1s
0x000044:
    if !pop goto 0x000068
0x000048:
    if !(> 1570.y 526s) goto 0x000068
0x00005C:
    [obj_mainchara].y = 526s
0x000068:
    if !(> 1570.x 170s) goto 0x0000E4
0x00007C:
    if !(> 1570.y 130s) goto 0x0000E4
0x000090:
    if !(< 1570.x (- self.room_width 170s)) goto 0x0000E4
0x0000B0:
    if !(< 1570.y (- self.room_height 160s)) goto 0x0000E4
0x0000D0:
    push (== self.lock 0s)
    goto 0x0000E8
0x0000E4:
    push 0s
0x0000E8:
    if !pop goto 0x0001AC
0x0000EC:
    self.tone = (caster_load[]:int32 (var "music/creepy_ambience.ogg"))
    self.tone1 = (caster_loop[]:int32 (var 1.1d) (var 0s) (var 385s))
    self.tone2 = (caster_loop[]:int32 (var 1s) (var 0s) (var 385s))
    self.tone3 = (caster_loop[]:int32 (var 0.9d) (var 0s) (var 385s))
    self.tonevol = 0s
    self.lock = 1s
    goto 0x000224
0x0001AC:
    if !(< 1570.x 180s) goto 0x0001CC
0x0001C0:
    [obj_mainchara].x = 180s
0x0001CC:
    if !(> 1570.x (- self.room_width 180s)) goto 0x000204
0x0001EC:
    [obj_mainchara].x = (- self.room_width 180s)
0x000204:
    if !(< 1570.y 170s) goto 0x000224
0x000218:
    [obj_mainchara].y = 170s
0x000224:
    if !(== self.lock 1s) goto 0x000364
0x000238:
    if !(>= self.locktime 250s) goto 0x00028C
0x00024C:
    self.tonevol = (/ (- self.locktime 250s) (double 250s))
    call (caster_set_volume[]:int32 self.tonevol (var 385s))
0x00028C:
    [obj_mainchara].x = (/ self.room_width (double 2s))
    [obj_mainchara].y = (/ self.room_height (double 2s))
    if !(== 1570.moving 1s) goto 0x0002F0
0x0002D8:
    self.locktime = (+ self.locktime 1s)
0x0002F0:
    if !(>= self.locktime 550s) goto 0x000364
0x000304:
    call (caster_free[]:int32 self.tone)
    call (snd_play[]:int32 (var 106s))
    [obj_mainchara].visible = 0s
    global.interact = 1s
    stog.alarm[4s] = 90s
    self.lock = 2s
0x000364:
    exit
