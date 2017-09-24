0x000000:
    if !(== self.con 1s) goto 0x0002CC
0x000014:
    self.counter = (+ self.counter 1s)
    if !(== self.counter 30s) goto 0x00004C
0x000040:
    self.image_index = 1s
0x00004C:
    if !(== self.counter 60s) goto 0x00006C
0x000060:
    self.image_index = 2s
0x00006C:
    if !(== self.counter 90s) goto 0x00008C
0x000080:
    self.image_index = 3s
0x00008C:
    if !(== self.counter 120s) goto 0x0000AC
0x0000A0:
    self.image_index = 2s
0x0000AC:
    if !(== self.counter 180s) goto 0x0000CC
0x0000C0:
    self.image_index = 4s
0x0000CC:
    if !(== self.counter 190s) goto 0x0000EC
0x0000E0:
    self.image_index = 5s
0x0000EC:
    if !(== self.counter 200s) goto 0x00010C
0x000100:
    self.image_index = 6s
0x00010C:
    if !(== self.counter 210s) goto 0x00012C
0x000120:
    self.image_index = 7s
0x00012C:
    if !(== self.counter 250s) goto 0x00014C
0x000140:
    self.image_index = 9s
0x00014C:
    if !(== self.counter 258s) goto 0x00016C
0x000160:
    self.image_index = 8s
0x00016C:
    if !(== self.counter 266s) goto 0x00018C
0x000180:
    self.image_index = 9s
0x00018C:
    if !(== self.counter 274s) goto 0x0001AC
0x0001A0:
    self.image_index = 8s
0x0001AC:
    if !(== self.counter 282s) goto 0x0001CC
0x0001C0:
    self.image_index = 9s
0x0001CC:
    if !(== self.counter 290s) goto 0x0001EC
0x0001E0:
    self.image_index = 8s
0x0001EC:
    if !(== self.counter 298s) goto 0x00020C
0x000200:
    self.image_index = 9s
0x00020C:
    if !(== self.counter 306s) goto 0x00022C
0x000220:
    self.image_index = 8s
0x00022C:
    if !(== self.counter 380s) goto 0x0002CC
0x000240:
    self.con = 1.1d
    global.typer = 85s
    global.msc = 0s
    stog.msg[0s] = "Finally./"
    stog.msg[1s] = "I was so&tired of&being a&flower./%%"
    call (scr_blcon_x[]:int32 self.y (+ self.x 90s))
    [obj_blconwideslave].sprite_index = 18s
0x0002CC:
    if !(== self.con 1.1d) goto 0x000304
0x0002E8:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x000308
0x000304:
    push 0s
0x000308:
    if !pop goto 0x000334
0x00030C:
    self.con = 1.2d
    stog.alarm[4s] = 50s
0x000334:
    if !(== self.con 2.2d) goto 0x00036C
0x000350:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x000370
0x00036C:
    push 0s
0x000370:
    if !pop goto 0x0003E8
0x000374:
    self.sprite_index = 2295s
    self.x = (+ self.x 2s)
    self.y = (- self.y 2s)
    self.image_index = 0s
    self.con = 3s
    self.counter = 0s
    stog.alarm[4s] = 40s
0x0003E8:
    if !(== self.con 4s) goto 0x000494
0x0003FC:
    self.counter = (+ self.counter 1s)
    if !(== self.counter 15s) goto 0x000434
0x000428:
    self.image_index = 1s
0x000434:
    if !(== self.counter 30s) goto 0x000454
0x000448:
    self.image_index = 2s
0x000454:
    if !(== self.counter 45s) goto 0x000474
0x000468:
    self.image_index = 3s
0x000474:
    if !(== self.counter 90s) goto 0x000494
0x000488:
    self.con = 5s
0x000494:
    if !(== self.con 5s) goto 0x000538
0x0004A8:
    stog.msg[0s] = "Howdy!/"
    stog.msg[1s] = (+ global.charname "^1,&are you&there?/")
    stog.msg[2s] = "It's me^1,&your&best&friend./%%"
    call (scr_blcon_x[]:int32 self.y (+ self.x 90s))
    [obj_blconwideslave].sprite_index = 18s
    self.con = 6s
0x000538:
    if !(== self.con 6s) goto 0x000568
0x00054C:
    push (== (instance_exists[]:int32 (var 188s)) 0s)
    goto 0x00056C
0x000568:
    push 0s
0x00056C:
    if !pop goto 0x000590
0x000570:
    self.con = 7s
    stog.alarm[4s] = 10s
0x000590:
    if !(== self.con 8s) goto 0x000610
0x0005A4:
    self.cr = (caster_load[]:int32 (var "music/create.ogg"))
    call (caster_play[]:int32 (var 1s) (var 1s) self.cr)
    self.flasher = 1s
    self.con = 9s
    stog.alarm[4s] = 5s
0x000610:
    if !(== self.con 10s) goto 0x00068C
0x000624:
    self.sprite_index = 2275s
    self.x = (- 320s (/ self.sprite_width (double 2s)))
    self.y = 20s
    self.ss = 0s
    self.con = 11s
    stog.alarm[4s] = 30s
0x00068C:
    if !(== self.con 12s) goto 0x0006E4
0x0006A0:
    self.con = 13s
    call (instance_create[]:int32 (var 1681s) (var 0s) (var 0s))
    stog.alarm[4s] = 200s
0x0006E4:
    if !(>= self.con 10s) goto 0x000750
0x0006F8:
    self.ss = (+ self.ss 1s)
    self.y = (+ self.y (* (sin[]:int32 (/ self.ss (double 6s))) 0.5d))
0x000750:
    if !(== self.con 14s) goto 0x0007D8
0x000764:
    global.border = 0s
    call (SCR_BORDERSETUP[]:int32 )
    global.battlegroup = 255s
    global.mercy = 1s
    global.hp = global.maxhp
    stog.flag[15s] = 0s
    global.seriousbattle = 1s
    call (room_goto[]:int32 (var 306s))
0x0007D8:
    exit
