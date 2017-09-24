0x000000:
    if !(< global.plot 42s) goto 0x000020
0x000014:
    self.myinteract = 0s
0x000020:
    if !(== self.myinteract 1s) goto 0x000048
0x000034:
    push (== self.conversation 0s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x0000D0
0x000050:
    push -5s
    if !(== 52s:flag 1s) goto 0x0000B8
0x00006C:
    if !(~ (bool (snd_isplaying[]:int32 (var 28s)))) goto 0x00009C
0x000088:
    call (snd_play[]:int32 (var 28s))
0x00009C:
    self.conversation = 0s
    self.myinteract = 0s
    goto 0x0000D0
0x0000B8:
    global.interact = 1s
    self.myinteract = 3s
0x0000D0:
    if !(== self.conversation 0s) goto 0x0000F8
0x0000E4:
    push (== self.myinteract 3s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x000198
0x000100:
    call (snd_play[]:int32 (var 28s))
    stog.alarm[5s] = 12s
    global.interact = 1s
    self.image_yscale = 1s
    self.visible = 1s
    self.sprite_index = 1295s
    self.image_speed = 0.1d
    self.y = 150s
    self.vspeed = -0.5d
    self.conversation = 2s
0x000198:
    if !(== self.conversation 2s) goto 0x0001C0
0x0001AC:
    push (<= self.y 120s)
    goto 0x0001C4
0x0001C0:
    push 0s
0x0001C4:
    if !pop goto 0x000200
0x0001C8:
    self.y = 120s
    stog.alarm[0s] = 20s
    self.conversation = 3s
    self.vspeed = 0s
0x000200:
    if !(== self.conversation 4s) goto 0x000338
0x000214:
    stog.msg[0s] = "* Hello^1?&* Is anybody there...^1?&* No?/%%"
    if !(== self.td 1s) goto 0x000258
0x000240:
    stog.msg[0s] = "* Are you two playing a trick&  on me^1?&* Real funny./%%"
0x000258:
    if !(== self.td 2s) goto 0x000284
0x00026C:
    stog.msg[0s] = "* Big guy^1?&* Is that you^1?&* Come on.../%%"
0x000284:
    if !(== self.td 3s) goto 0x0002B0
0x000298:
    stog.msg[0s] = "* Well^1, it's not the tall&  skeleton..^1.&* He's too loud./%%"
0x0002B0:
    if !(== self.td 4s) goto 0x0002DC
0x0002C4:
    stog.msg[0s] = "* Whoever you are^1, knock it&  off!!!/%%"
0x0002DC:
    if !(> self.td 4s) goto 0x000308
0x0002F0:
    stog.msg[0s] = "* .../%%"
0x000308:
    call (scr_regulartext[]:int32 )
    self.conversation = 7s
    self.td = (+ self.td 1s)
0x000338:
    if !(== self.conversation 7s) goto 0x000368
0x00034C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00036C
0x000368:
    push 0s
0x00036C:
    if !pop goto 0x00039C
0x000370:
    self.vspeed = 1s
    stog.alarm[0s] = 20s
    self.conversation = 8s
0x00039C:
    if !(== self.conversation 9s) goto 0x000404
0x0003B0:
    self.visible = 0s
    self.sprite_index = 1057s
    self.vspeed = 0s
    self.y = 140s
    self.conversation = 0s
    global.interact = 0s
    self.myinteract = 0s
0x000404:
    exit
