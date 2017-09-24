0x000000:
    if !(== self.con 1s) goto 0x0000C0
0x000014:
    call (caster_free[]:int32 (var -3s))
    call (snd_play[]:int32 (var 104s))
    global.typer = 21s
    global.msc = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* (Ring...)/"
    stog.msg[1s] = "* (It's a voice you have&  never heard before.)/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
0x0000C0:
    if !(== self.con 2s) goto 0x0000F0
0x0000D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000F4
0x0000F0:
    push 0s
0x0000F4:
    if !pop goto 0x0001F4
0x0000F8:
    global.typer = 79s
    stog.msg[0s] = (+ (+ "* " global.charname) "..^1.&* Are you there?/")
    stog.msg[1s] = "* It's been a long time^1,&  hasn't it...?/"
    stog.msg[2s] = "* But you've done well./"
    stog.msg[3s] = "* Thanks to you^1, everything&  has fallen into place./"
    stog.msg[4s] = (+ (+ "* " global.charname) ".../")
    stog.msg[5s] = "* See you soon./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3s
0x0001F4:
    if !(== self.con 3s) goto 0x000224
0x000208:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000228
0x000224:
    push 0s
0x000228:
    if !pop goto 0x00026C
0x00022C:
    self.rect = 1s
    call (snd_play[]:int32 (var 13s))
    self.con = 4s
    stog.alarm[4s] = 9s
0x00026C:
    if !(== self.con 5s) goto 0x0002B4
0x000280:
    call (snd_play[]:int32 (var 21s))
    self.con = 6s
    stog.alarm[4s] = 30s
0x0002B4:
    if !(== self.con 7s) goto 0x000328
0x0002C8:
    global.facing = 0s
    self.la = (instance_create[]:int32 (var 1565s) (var 0s) (var 0s))
    pushenv (int32 self.la) 0x000318
0x00030C:
    self.blacktime = 0s
0x000318:
    popenv 0x00030C
0x00031C:
    self.con = 8s
0x000328:
    if !(== self.rect 1s) goto 0x000480
0x00033C:
    if !(< self.rectaur 20s) goto 0x000368
0x000350:
    self.rectaur = (+ self.rectaur 2s)
0x000368:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (+ 140s self.rectaur) (var 180s) (var 140s))
    call (draw_rectangle[]:int32 (var 0s) (var 250s) (- 180s self.rectaur) (var 180s) (var 180s))
    if !(== self.room 261s) goto 0x000480
0x000408:
    call (draw_rectangle[]:int32 (var 0s) (+ 120s self.rectaur) (var 99s) (var 120s) (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (- 160s self.rectaur) (var 99s) (var 160s) (var 0s))
0x000480:
    exit
