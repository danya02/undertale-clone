0x000000:
    if !(== self.con 1s) goto 0x000130
0x000014:
    push (var 1422s)
    self.undyne = (scr_marker[]:int32 -1s (- 0s:view_yview 230s) (var 150s))
    push 0.334d
    stog.image_speed* = (int32 self.undyne)
    global.typer = 37s
    global.msc = 0s
    global.facechoice = 5s
    global.faceemotion = 0s
    stog.msg[0s] = "* That's it^1, then...!/"
    stog.msg[1s] = "* No more running away!/%%"
    push -5s
    if !(== 352s:flag 1s) goto 0x000100
0x0000E8:
    stog.msg[0s] = "* I KNEW you would&  come back here!/%%"
0x000100:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
0x000130:
    if !(== self.con 2s) goto 0x000160
0x000144:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000164
0x000160:
    push 0s
0x000164:
    if !pop goto 0x000218
0x000168:
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/undynefast.ogg"))
    stog.alarm[4s] = 30s
    push 8s
    stog.vspeed* = (int32 self.undyne)
    global.faceemotion = 1s
    stog.msg[0s] = "* HERE I COME!!!!!!!"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3s
0x000218:
    if !(== self.con 4s) goto 0x0002E8
0x00022C:
    pushenv 1351s 0x000240
0x000234:
    call (instance_destroy[]:int32 )
0x000240:
    popenv 0x000234
0x000244:
    pushenv 782s 0x000258
0x00024C:
    call (instance_destroy[]:int32 )
0x000258:
    popenv 0x00024C
0x00025C:
    pushenv 779s 0x000270
0x000264:
    call (instance_destroy[]:int32 )
0x000270:
    popenv 0x000264
0x000274:
    self.con = 5s
    global.border = 12s
    global.battlegroup = 47s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.talkedto = 0s
    stog.alarm[4s] = 2s
0x0002E8:
    if !(== self.con 6s) goto 0x0003A4
0x0002FC:
    pushenv (int32 self.undyne) 0x000318
0x00030C:
    call (instance_destroy[]:int32 )
0x000318:
    popenv 0x00030C
0x00031C:
    push -5s
    if !(== 350s:flag 0s) goto 0x000384
0x000338:
    self.u = (instance_create[]:int32 (var 1118s) (var 620s) (var 160s))
    stog.alarm[4s] = 30s
    self.con = 7s
    goto 0x0003A4
0x000384:
    stog.flag[17s] = 0s
    global.plot = 122s
0x0003A4:
    if !(== self.con 8s) goto 0x000428
0x0003B8:
    push -5s
    if !(== 350s:flag 0s) goto 0x0003FC
0x0003D4:
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
    goto 0x000408
0x0003FC:
    call (audio_stop_all[]:int32 )
0x000408:
    stog.flag[352s] = 1s
    call (instance_destroy[]:int32 )
0x000428:
    exit
