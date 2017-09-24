0x000000:
    if !(== self.doomcon 0s) goto 0x000074
0x000014:
    if !(== global.faceemotion 1s) goto 0x000034
0x000028:
    self.image_index = 1s
0x000034:
    if !(== global.faceemotion 2s) goto 0x000054
0x000048:
    self.image_index = 2s
0x000054:
    if !(== global.faceemotion 3s) goto 0x000074
0x000068:
    self.image_index = 0s
0x000074:
    if !(== self.writing 1s) goto 0x0000C4
0x000088:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x0000C4
0x0000A4:
    self.writing = 0s
    call (event_user[]:int32 (var 2s))
0x0000C4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0001A8
0x0000DC:
    push -5s
    if !(== 20s:flag 1s) goto 0x000188
0x0000F8:
    if (!= 782.stringno self.remno) goto 0x000128
0x000110:
    push (!= 782.id self.idno)
    goto 0x00012C
0x000128:
    push 1s
0x00012C:
    if !pop goto 0x000188
0x000130:
    stog.flag[20s] = 0s
    if !(< self.image_index 14s) goto 0x000170
0x000158:
    self.image_index = (+ self.image_index 1s)
0x000170:
    self.stepper = (+ self.stepper 1s)
0x000188:
    self.remno = 782.stringno
    self.idno = 782.id
0x0001A8:
    if !(== self.con 16s) goto 0x000218
0x0001BC:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000218
0x0001D8:
    self.fader = 1s
    self.con = 17s
    stog.alarm[4s] = 30s
    call (snd_play[]:int32 (var 50s))
0x000218:
    if !(== self.con 18s) goto 0x000294
0x00022C:
    global.typer = 73s
    stog.msg[0s] = "* Flowey ran away."
    call (instance_create[]:int32 (var 782s) (var 50s) (var 120s))
    self.con = 19s
    stog.alarm[4s] = 210s
0x000294:
    if !(== self.con 20s) goto 0x0002D4
0x0002A8:
    self.doomcon = 6s
    stog.alarm[9s] = 10s
    self.con = 21s
0x0002D4:
    if !(== self.fader 1s) goto 0x000308
0x0002E8:
    self.image_alpha = (- self.image_alpha 0.01d)
0x000308:
    if !(== self.doomcon 0.5d) goto 0x000358
0x000324:
    self.doomcon = 0.6d
    self.shudder = 8s
    stog.alarm[6s] = 1s
0x000358:
    if !(== self.doomcon 1s) goto 0x0004E8
0x00036C:
    call (ini_close[]:int32 )
    stog.flag[475s] = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.K = (ini_read_real[]:int32 (var 0s) (var "K") (var "Flowey"))
    if !(== self.K 0s) goto 0x000414
0x0003E8:
    call (ini_write_real[]:int32 (var 1s) (var "K") (var "Flowey"))
0x000414:
    call (ini_write_real[]:int32 (var 2s) (var "E") (var "FFFFF"))
    call (ini_close[]:int32 )
    global.msc = 0s
    stog.msg[0s] = "I knew you had it in you^3!%%"
    global.typer = 71s
    call (instance_create[]:int32 (var 782s) (- self.y 30s) (- self.x 60s))
    self.doomcounter = 0s
    self.doomcon = 2s
    self.sprite_index = 649s
    self.image_speed = 0.3d
0x0004E8:
    if !(== self.doomcon 2s) goto 0x000544
0x0004FC:
    self.image_speed = (+ self.image_speed 0.0025d)
    if !(>= self.image_speed 0.5d) goto 0x000544
0x000538:
    self.doomcon = 3s
0x000544:
    if !(== self.doomcon 3s) goto 0x0005D0
0x000558:
    self.image_speed = (- self.image_speed 0.004d)
    if !(<= self.image_speed 0s) goto 0x0005D0
0x00058C:
    self.doomcon = 4s
    self.sprite_index = 650s
    self.image_index = 0s
    self.image_speed = 0s
    stog.alarm[5s] = 80s
0x0005D0:
    if !(== self.doomcon 5s) goto 0x000644
0x0005E4:
    self.image_speed = 0.2d
    if !(>= self.image_index 6s) goto 0x000644
0x00060C:
    self.image_index = 6s
    self.doomcon = 6s
    stog.alarm[9s] = 150s
    self.image_speed = 0s
0x000644:
    if !(== self.doomcon 7s) goto 0x00069C
0x000658:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.doomcon = 8s
    stog.alarm[9s] = 12s
0x00069C:
    if !(== self.doomcon 9s) goto 0x000744
0x0006B0:
    global.entrance = 0s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 2s) (var "E") (var "FFFFF"))
    call (ini_close[]:int32 )
    call (room_goto[]:int32 (var 238s))
0x000744:
    exit
