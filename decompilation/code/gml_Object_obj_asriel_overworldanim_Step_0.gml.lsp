0x000000:
    if !(== self.con 1s) goto 0x000040
0x000014:
    global.facing = 2s
    global.interact = 1s
    self.image_speed = 0.08d
0x000040:
    if !(== self.con 2s) goto 0x0000CC
0x000054:
    self.con = 3s
    global.msc = 0s
    global.faceemotion = 3s
    global.facechoice = 9s
    global.typer = 89s
    stog.msg[0s] = "* I'm so sorry./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0000CC:
    if !(== self.con 3s) goto 0x0000FC
0x0000E0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000100
0x0000FC:
    push 0s
0x000100:
    if !pop goto 0x000124
0x000104:
    self.con = 4s
    stog.alarm[4s] = 90s
0x000124:
    if !(== self.con 4s) goto 0x000158
0x000138:
    self.image_speed = 0.1d
    self.sprite_index = 2415s
0x000158:
    if !(== self.con 5s) goto 0x0001C8
0x00016C:
    self.con = 6s
    stog.alarm[4s] = 90s
    self.image_speed = 0s
    self.image_index = 0s
    self.y = (- self.y 2s)
    self.sprite_index = 2413s
0x0001C8:
    if !(== self.con 6s) goto 0x000220
0x0001DC:
    if !(< self.image_index 2s) goto 0x000214
0x0001F0:
    self.image_index = (+ self.image_index 0.0333333333333333d)
    goto 0x000220
0x000214:
    self.image_index = 2s
0x000220:
    if !(== self.con 7s) goto 0x0002EC
0x000234:
    call (caster_loop[]:int32 (var 0.8d) (var 1s) self.musicbox)
    self.sprite_index = 2417s
    global.msc = 800s
    global.faceemotion = 7s
    global.facechoice = 9s
    global.typer = 89s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 7.1d
    self.mvol = (caster_get_volume[]:int32 self.musicbox)
0x0002EC:
    if !(== self.con 7.1d) goto 0x000324
0x000308:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000328
0x000324:
    push 0s
0x000328:
    if !pop goto 0x000390
0x00032C:
    self.mvol = (- self.mvol 0.02d)
    call (caster_set_volume[]:int32 self.mvol self.musicbox)
    if !(< self.mvol -0.5d) goto 0x000390
0x000384:
    self.con = 8s
0x000390:
    if !(== self.con 8s) goto 0x0003C0
0x0003A4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003C4
0x0003C0:
    push 0s
0x0003C4:
    if !pop goto 0x000428
0x0003C8:
    stog.alarm[3s] = 60s
    self.con = 9s
    self.image_index = 0s
    self.siner = 0s
    self.thisy = self.y
    self.upy = 0s
    self.times = 0s
0x000428:
    if !(== self.con 9s) goto 0x000480
0x00043C:
    self.con = 10s
    stog.alarm[4s] = 420s
    self.whited = 0s
    self.shaked = -3s
    self.powered = 1s
0x000480:
    if (== self.con 10s) goto 0x0004A8
0x000494:
    push (== self.con 11s)
    goto 0x0004AC
0x0004A8:
    push 1s
0x0004AC:
    if !pop goto 0x00057C
0x0004B0:
    self.shaked = (+ self.shaked 0.01d)
    if !(> self.shaked 0s) goto 0x00057C
0x0004E4:
    if !(< self.shaked 1s) goto 0x000504
0x0004F8:
    self.shaked = 1s
0x000504:
    stog.view_xview[0s] = (- (+ 0s (random[]:int32 self.shaked)) (random[]:int32 self.shaked))
    stog.view_yview[0s] = (- (+ 0s (random[]:int32 self.shaked)) (random[]:int32 self.shaked))
0x00057C:
    if !(== self.powered 1s) goto 0x00071C
0x000590:
    self.sprite_index = 2410s
    if !(< self.image_index 7s) goto 0x0005D0
0x0005B0:
    self.image_index = (+ self.image_index 0.03d)
0x0005D0:
    if !(>= self.image_index 7s) goto 0x000678
0x0005E4:
    self.image_index = (+ self.image_index 0.2d)
    if !(>= self.image_index 8.8d) goto 0x000644
0x000620:
    self.times = (+ self.times 1s)
    self.image_index = 7s
0x000644:
    if !(> self.times 6s) goto 0x000678
0x000658:
    if !(== self.emerge 0s) goto 0x000678
0x00066C:
    self.emerge = 1s
0x000678:
    if !(>= self.image_index 5s) goto 0x00071C
0x00068C:
    if !(< self.upy 10s) goto 0x0006C0
0x0006A0:
    self.upy = (+ self.upy 0.25d)
0x0006C0:
    self.siner = (+ self.siner 1s)
    self.y = (- (- self.thisy self.upy) (* (sin[]:int32 (/ self.siner (double 8s))) 1s))
0x00071C:
    if !(== self.emerge 1s) goto 0x0007BC
0x000730:
    self.m = (instance_create[]:int32 (var 1683s) (+ self.y 10s) (+ self.x 3s))
    push 1s
    stog.spec* = (int32 self.m)
    push 6s
    push (int32 self.m)
    stog.rno[] = 0s
    stog.alarm[5s] = 10s
    self.emerge = 2s
0x0007BC:
    if !(== self.con 20s) goto 0x000874
0x0007D0:
    push 1046s
    stog.sprite_index* = (int32 self.mc)
    push (+ self.x 60s)
    stog.x* = (int32 self.mc)
    push (- self.thisy 2s)
    stog.y* = (int32 self.mc)
    self.sprite_index = 2411s
    self.image_index = 0s
    self.image_speed = 0s
    self.con = 21s
    stog.alarm[4s] = 50s
0x000874:
    if !(== self.con 22s) goto 0x000894
0x000888:
    self.con = 23s
0x000894:
    if !(== self.con 23s) goto 0x000948
0x0008A8:
    self.image_index = (+ self.image_index 0.05d)
    if !(< self.y self.thisy) goto 0x000904
0x0008E0:
    self.y = (+ self.y 0.2d)
    goto 0x000914
0x000904:
    self.y = self.thisy
0x000914:
    if !(>= self.image_index 10s) goto 0x000948
0x000928:
    self.con = 24s
    stog.alarm[4s] = 70s
0x000948:
    if !(== self.con 25s) goto 0x000988
0x00095C:
    self.sprite_index = 2423s
    self.con = 26s
    stog.alarm[4s] = 70s
0x000988:
    if !(== self.con 27s) goto 0x000A2C
0x00099C:
    self.sprite_index = 2412s
    self.con = 27.1d
    global.msc = 803s
    global.faceemotion = 7s
    global.facechoice = 9s
    global.typer = 89s
    self.dl = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dl)
0x000A2C:
    if !(== self.con 28s) goto 0x000A5C
0x000A40:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A60
0x000A5C:
    push 0s
0x000A60:
    if !pop goto 0x000AE8
0x000A64:
    self.sprite_index = 2412s
    push (+ self.x 60s)
    stog.x* = (int32 self.mc)
    push (- self.thisy 2s)
    stog.y* = (int32 self.mc)
    push (- self.depth 1s)
    stog.depth* = (int32 self.mc)
    self.con = 29s
0x000AE8:
    if !(== self.con 29s) goto 0x000BC4
0x000AFC:
    stog.x* = (- (int32 self.mc):x 1s)
    stog.image_index* = (+ (int32 self.mc):image_index 0.1d)
    if !(<= (int32 self.mc):x (+ self.x 2s)) goto 0x000BC4
0x000B80:
    push (int32 self.mc)
    push (int32 self.mc)
    push (+ self.x 2s)
    stog.x* = (int32 self.mc)
    self.con = 30s
    stog.alarm[4s] = 20s
0x000BC4:
    if !(== self.con 31s) goto 0x000C2C
0x000BD8:
    push 0s
    stog.image_index* = (int32 self.mc)
    push 0s
    stog.visible* = (int32 self.mc)
    self.image_index = 0s
    self.sprite_index = 2409s
    self.con = 32s
0x000C2C:
    if !(== self.con 32s) goto 0x000C94
0x000C40:
    self.image_index = (+ self.image_index 0.2d)
    if !(>= self.image_index 4s) goto 0x000C94
0x000C74:
    self.con = 33s
    stog.alarm[4s] = 40s
0x000C94:
    if !(== self.con 34s) goto 0x000CFC
0x000CA8:
    self.image_index = (+ self.image_index 0.2d)
    if !(>= self.image_index 8s) goto 0x000CFC
0x000CDC:
    self.con = 35s
    stog.alarm[4s] = 40s
0x000CFC:
    if !(== self.con 36s) goto 0x000D70
0x000D10:
    self.pattimer = 0s
    self.image_index = (+ self.image_index 0.2d)
    if !(>= self.image_index 11s) goto 0x000D70
0x000D50:
    self.con = 37s
    stog.alarm[4s] = 80s
0x000D70:
    if (== self.con 38s) goto 0x000DA0
0x000D84:
    push (== self.con 38.1d)
    goto 0x000DA4
0x000DA0:
    push 1s
0x000DA4:
    if !pop goto 0x000ED8
0x000DA8:
    self.image_index = (+ self.image_index 0.05d)
    if !(>= self.image_index 11.8d) goto 0x000DF8
0x000DE4:
    self.image_index = 10.2d
0x000DF8:
    self.pattimer = (+ self.pattimer 1s)
    if !(== self.pattimer 90s) goto 0x000ED8
0x000E24:
    self.con = 38.1d
    global.msc = 0s
    global.faceemotion = 0s
    global.facechoice = 0s
    global.typer = 90s
    stog.msg[0s] = "* Ha..^1. ha.../"
    stog.msg[1s] = "* I don't want to let&  go.../%%"
    self.dl = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.dl)
0x000ED8:
    if !(== self.con 38.1d) goto 0x000F10
0x000EF4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F14
0x000F10:
    push 0s
0x000F14:
    if !pop goto 0x000F40
0x000F18:
    self.con = 38.2d
    stog.alarm[4s] = 60s
0x000F40:
    if !(== self.con 39.2d) goto 0x000F80
0x000F5C:
    self.con = 39s
    self.hug_rev = 11s
    self.image_index = 11s
0x000F80:
    if !(== self.con 39s) goto 0x001060
0x000F94:
    if !(> self.hug_rev 0.3d) goto 0x000FF4
0x000FB0:
    self.hug_rev = (- self.hug_rev 0.1d)
    self.image_index = (- self.image_index 0.1d)
    goto 0x001060
0x000FF4:
    self.image_index = 0s
    self.con = 40s
    stog.alarm[4s] = 30s
    self.mcx = (int32 self.mc):x
    push 1s
    stog.visible* = (int32 self.mc)
    self.sprite_index = 2412s
0x001060:
    if !(== self.con 41s) goto 0x001130
0x001074:
    stog.image_index* = (+ (int32 self.mc):image_index 0.1d)
    stog.x* = (+ (int32 self.mc):x 1s)
    if !(> (int32 self.mc):x (+ self.mcx 30s)) goto 0x001130
0x0010F8:
    push (int32 self.mc)
    push (int32 self.mc)
    push 0s
    stog.image_index* = (int32 self.mc)
    self.con = 49s
    stog.alarm[4s] = 50s
0x001130:
    if !(== self.con 50s) goto 0x001160
0x001144:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001164
0x001160:
    push 0s
0x001164:
    if !pop goto 0x001270
0x001168:
    self.sprite_index = 2421s
    stog.msg[0s] = "\\E7* Frisk.../"
    stog.msg[1s] = "* You're.../"
    stog.msg[2s] = "\\E0* You're going to do&  a great job^1, OK?/"
    stog.msg[3s] = "* No matter what you&  do./"
    stog.msg[4s] = "* Everyone will be&  there for you^1,&  okay?/%%"
    global.msc = 0s
    global.faceemotion = 7s
    global.facechoice = 9s
    global.typer = 89s
    self.dl = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dl)
    self.con = 50.1d
0x001270:
    if !(== self.con 50.1d) goto 0x0012A8
0x00128C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0012AC
0x0012A8:
    push 0s
0x0012AC:
    if !pop goto 0x0012D8
0x0012B0:
    self.con = 49.2d
    stog.alarm[4s] = 40s
0x0012D8:
    if !(== self.con 50.2d) goto 0x001328
0x0012F4:
    self.sprite_index = 2419s
    self.con = 49.3d
    stog.alarm[4s] = 50s
0x001328:
    if !(== self.con 50.3d) goto 0x0013F0
0x001344:
    global.msc = 0s
    global.faceemotion = 7s
    global.facechoice = 9s
    global.typer = 89s
    stog.msg[0s] = "\\E7* Well..^1.&* My time's running out./"
    stog.msg[1s] = "* Goodbye./%%"
    self.dl = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dl)
    self.con = 52s
0x0013F0:
    if !(== self.con 52s) goto 0x001420
0x001404:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001424
0x001420:
    push 0s
0x001424:
    if !pop goto 0x001470
0x001428:
    self.vspeed = -0.25d
    self.image_speed = 0.1d
    self.con = 54s
    stog.alarm[4s] = 80s
0x001470:
    if !(== self.con 55s) goto 0x0014E0
0x001484:
    self.y = (round[]:int32 self.y)
    self.vspeed = 0s
    self.image_speed = 0s
    self.image_index = 0s
    self.con = 56s
    stog.alarm[4s] = 80s
0x0014E0:
    if !(== self.con 57s) goto 0x001520
0x0014F4:
    self.sprite_index = 2417s
    self.con = 58s
    stog.alarm[4s] = 60s
0x001520:
    if !(== self.con 59s) goto 0x0015F8
0x001534:
    global.msc = 0s
    global.faceemotion = 0s
    global.facechoice = 9s
    global.typer = 89s
    stog.msg[0s] = "* By the way.../"
    stog.msg[1s] = "* Frisk./"
    stog.msg[2s] = "\\E6* ... take care of Mom&  and Dad for me^1, OK?/%%"
    self.dl = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dl)
    self.con = 60s
0x0015F8:
    if !(== self.con 60s) goto 0x001628
0x00160C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00162C
0x001628:
    push 0s
0x00162C:
    if !pop goto 0x001650
0x001630:
    self.con = 61s
    stog.alarm[4s] = 40s
0x001650:
    if !(== self.con 62s) goto 0x00169C
0x001664:
    self.con = 63s
    stog.alarm[4s] = 40s
    self.sprite_index = 2419s
    self.ttimer = 0s
0x00169C:
    if !(== self.con 64s) goto 0x001814
0x0016B0:
    push 1044s
    stog.sprite_index* = (int32 self.mc)
    self.sprite_index = 2419s
    self.vspeed = -0.25d
    self.image_speed = 0.05d
    self.ttimer = (+ self.ttimer 1s)
    if !(== self.ttimer 40s) goto 0x001768
0x001728:
    self.sw = (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
    push 1s
    stog.ex* = (int32 self.sw)
0x001768:
    if !(== self.ttimer 104s) goto 0x001814
0x00177C:
    stog.flag[510s] = 1s
    global.plot = 999s
    stog.flag[7s] = 1s
    call (ini_open[]:int32 (var "undertale.ini"))
    call (ini_write_real[]:int32 (var 1s) (var "F7") (var "F7"))
    call (ini_close[]:int32 )
    call (room_goto[]:int32 (var 236s))
0x001814:
    exit
