0x000000:
    self.move = 0s
    if !(bool (instance_exists[]:int32 (var 1117s))) goto 0x0000E0
0x000024:
    self.move = 1117.hspeed
    [obj_undynea_actor].sprite_index = 1437s
    push 20s
    push 1117s
    stog.alarm[] = 8s
    self.star = (instance_create[]:int32 (var 1040s) (+ self.y 5s) (- self.x 5s))
    push self.move
    stog.hspeed* = (int32 self.star)
    push (- 1117.depth 1s)
    stog.depth* = (int32 self.star)
    call (snd_play[]:int32 (var 13s))
0x0000E0:
    self.xx = self.x
    self.yy = self.y
    if !(== self.room 93s) goto 0x000140
0x000114:
    self.xx = -100s
    self.yy = (choose[]:int32 (var 0s) (var 240s))
0x000140:
    if (<= 3s 0) goto 0x0001C4
0x000158:
    push 3s
    self.a = (instance_create[]:int32 (var 1042s) (+ self.yy 5s) (- self.xx 5s))
    push self.move
    stog.move* = (int32 self.a)
    if (bool (- pop 1)) goto 0x000158
0x0001C4:
    push (- pop 1)
    pop
    if !(< self.spearamt 35s) goto 0x000234
0x0001DC:
    self.spearamt = (+ self.spearamt 0.3d)
    if !(> self.spearamt 13s) goto 0x000230
0x000210:
    self.spearamt = (+ self.spearamt 0.4d)
0x000230:
    goto 0x000270
0x000234:
    call (snd_play[]:int32 (var 114s))
    if !(== self.room 92s) goto 0x000270
0x00025C:
    stog.flag[284s] = 1s
0x000270:
    stog.alarm[0s] = 48s
    push -1s
    stog.alarm[(- 0s:alarm self.spearamt)] = 0s
0x0002AC:
    exit
