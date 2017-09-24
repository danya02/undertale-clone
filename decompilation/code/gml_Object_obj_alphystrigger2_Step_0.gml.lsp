0x000000:
    if !(> self.con 0s) goto 0x001274
0x000014:
    if !(== self.con 1s) goto 0x000148
0x000028:
    global.interact = 1s
    self.alphys = 1170s
    push 0s
    stog.direction* = (int32 self.alphys)
    global.typer = 47s
    global.msc = 0s
    global.faceemotion = 3s
    global.facechoice = 6s
    stog.msg[0s] = "* Wait^1, wait!/%%"
    if !(> 1570.x (int32 self.alphys):x) goto 0x0000DC
0x0000C4:
    push 0s
    stog.direction* = (int32 self.alphys)
0x0000DC:
    if !(< 1570.x (int32 self.alphys):x) goto 0x000118
0x000100:
    push 180s
    stog.direction* = (int32 self.alphys)
0x000118:
    self.con = 2s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000148:
    if !(== self.con 2s) goto 0x000178
0x00015C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00017C
0x000178:
    push 0s
0x00017C:
    if !pop goto 0x00033C
0x000180:
    push 0.334d
    stog.image_speed* = (int32 self.alphys)
    if !(> 1570.x (int32 self.alphys):x) goto 0x0001D0
0x0001C4:
    global.facing = 3s
0x0001D0:
    if !(< 1570.x (int32 self.alphys):x) goto 0x000200
0x0001F4:
    global.facing = 1s
0x000200:
    if !(> 1570.y (int32 self.alphys):y) goto 0x00026C
0x000224:
    self.up = 0s
    push 270s
    stog.direction* = (int32 self.alphys)
    push 3s
    stog.vspeed* = (int32 self.alphys)
    self.con = 3s
0x00026C:
    if !(< 1570.y (int32 self.alphys):y) goto 0x0002D8
0x000290:
    self.up = 1s
    push 90s
    stog.direction* = (int32 self.alphys)
    push -3s
    stog.vspeed* = (int32 self.alphys)
    self.con = 3s
0x0002D8:
    if !(<= (abs[]:int32 (- 1570.y (int32 self.alphys):y)) 5s) goto 0x00033C
0x00030C:
    self.up = 3s
    push 0s
    stog.vspeed* = (int32 self.alphys)
    self.con = 4s
0x00033C:
    if !(== self.con 3s) goto 0x00039C
0x000350:
    if !(<= (abs[]:int32 (- 1570.y (int32 self.alphys):y)) 3s) goto 0x00039C
0x000384:
    self.up = 3s
    self.con = 4s
0x00039C:
    if !(== self.con 4s) goto 0x000464
0x0003B0:
    if !(> 1570.x (int32 self.alphys):x) goto 0x000404
0x0003D4:
    push 0s
    stog.direction* = (int32 self.alphys)
    push 3s
    stog.hspeed* = (int32 self.alphys)
0x000404:
    if !(< 1570.x (int32 self.alphys):x) goto 0x000458
0x000428:
    push 180s
    stog.direction* = (int32 self.alphys)
    push -3s
    stog.hspeed* = (int32 self.alphys)
0x000458:
    self.con = 5s
0x000464:
    if !(== self.con 5s) goto 0x0005A0
0x000478:
    if !(< (abs[]:int32 (- (+ 1570.x 10s) (+ (int32 self.alphys):x (/ (int32 self.alphys):sprite_width (double 2s))))) 30s) goto 0x0005A0
0x0004D8:
    push 0s
    stog.image_speed* = (int32 self.alphys)
    push 0s
    stog.hspeed* = (int32 self.alphys)
    if !(> 1570.x (int32 self.alphys):x) goto 0x000544
0x00052C:
    push 0s
    stog.direction* = (int32 self.alphys)
0x000544:
    if !(< 1570.x (int32 self.alphys):x) goto 0x000580
0x000568:
    push 180s
    stog.direction* = (int32 self.alphys)
0x000580:
    self.con = 6s
    stog.alarm[4s] = 20s
0x0005A0:
    if !(== self.con 7s) goto 0x000614
0x0005B4:
    stog.msg[0s] = "\\E0* Let me give you my&  ph-phone number!/"
    stog.msg[1s] = "\\E7* Th-then..^1. m-maybe..^1.&* If you need help^1,&  I could.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
0x000614:
    if !(== self.con 8s) goto 0x000644
0x000628:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000648
0x000644:
    push 0s
0x000648:
    if !pop goto 0x00066C
0x00064C:
    self.con = 9s
    stog.alarm[4s] = 15s
0x00066C:
    if !(== self.con 10s) goto 0x00069C
0x000680:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0006A0
0x00069C:
    push 0s
0x0006A0:
    if !pop goto 0x000728
0x0006A4:
    self.blc = (instance_create[]:int32 (var 1337s) (- (int32 self.alphys):y 5s) (+ (int32 self.alphys):x 8s))
    call (snd_play[]:int32 (var 29s))
    stog.alarm[4s] = 30s
    self.con = 11s
0x000728:
    if !(== self.con 12s) goto 0x000758
0x00073C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00075C
0x000758:
    push 0s
0x00075C:
    if !pop goto 0x0007F8
0x000760:
    pushenv (int32 self.blc) 0x00077C
0x000770:
    call (instance_destroy[]:int32 )
0x00077C:
    popenv 0x000770
0x000780:
    stog.msg[0s] = "\\E3* Wh..^1. where'd you get&  that phone!?&* It's ANCIENT!/"
    stog.msg[1s] = "\\E1* It doesn't even have&  texting./"
    stog.msg[2s] = "\\E3* W-wait a second^1,&  please!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 13s
0x0007F8:
    if !(== self.con 13s) goto 0x000828
0x00080C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00082C
0x000828:
    push 0s
0x00082C:
    if !pop goto 0x0008EC
0x000830:
    if !(> 1570.x (int32 self.alphys):x) goto 0x00086C
0x000854:
    push 180s
    stog.direction* = (int32 self.alphys)
0x00086C:
    if !(< 1570.x (int32 self.alphys):x) goto 0x0008A8
0x000890:
    push 0s
    stog.direction* = (int32 self.alphys)
0x0008A8:
    push 6s
    stog.speed* = (int32 self.alphys)
    push 0.5d
    stog.image_speed* = (int32 self.alphys)
    self.con = 14s
0x0008EC:
    if !(== self.con 14s) goto 0x000A18
0x000900:
    push (int32 self.alphys):x
    push -1s
    if (> 0s:view_xview (+ (+ -1s 0s:view_wview) 30s)) goto 0x00097C
0x000948:
    push (int32 self.alphys):x
    push (< -1s (- 0s:view_xview 30s))
    goto 0x000980
0x00097C:
    push 1s
0x000980:
    if !pop goto 0x000A18
0x000984:
    call (caster_pause[]:int32 global.currentsong)
    push 0s
    stog.speed* = (int32 self.alphys)
    self.noise = (caster_load[]:int32 (var "music/alphysfix.ogg"))
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.noise)
    self.con = 15s
    stog.alarm[4s] = 100s
0x000A18:
    if !(== self.con 16s) goto 0x000C0C
0x000A2C:
    call (caster_free[]:int32 self.noise)
    call (caster_resume[]:int32 global.currentsong)
    if !(> 1570.x (int32 self.alphys):x) goto 0x000A90
0x000A78:
    push 0s
    stog.direction* = (int32 self.alphys)
0x000A90:
    if !(< 1570.x (int32 self.alphys):x) goto 0x000ACC
0x000AB4:
    push 180s
    stog.direction* = (int32 self.alphys)
0x000ACC:
    push 6s
    stog.speed* = (int32 self.alphys)
    if !(< (abs[]:int32 (- (+ 1570.x 10s) (+ (int32 self.alphys):x (/ (int32 self.alphys):sprite_width (double 2s))))) 30s) goto 0x000C0C
0x000B44:
    push 0s
    stog.image_speed* = (int32 self.alphys)
    push 0s
    stog.speed* = (int32 self.alphys)
    if !(> 1570.x (int32 self.alphys):x) goto 0x000BB0
0x000B98:
    push 0s
    stog.direction* = (int32 self.alphys)
0x000BB0:
    if !(< 1570.x (int32 self.alphys):x) goto 0x000BEC
0x000BD4:
    push 180s
    stog.direction* = (int32 self.alphys)
0x000BEC:
    self.con = 17s
    stog.alarm[4s] = 20s
0x000C0C:
    if !(== self.con 18s) goto 0x000DB0
0x000C20:
    global.faceemotion = 0s
    stog.msg[0s] = "\\E0* Here^1, I upgraded it&  for you!/"
    stog.msg[1s] = "* It can do texting^1,&  items^1, it's got a&  key chain.../"
    stog.msg[2s] = "* I even signed you up&  for the underground's&  No. 1 social network!/"
    stog.msg[3s] = "\\E7* Now we're officially&  friends^1!&* Ehehehe!/"
    stog.msg[4s] = "\\E0* Heheh.../"
    stog.msg[5s] = "\\E0* Heh.../"
    stog.msg[6s] = "\\E0* .../"
    stog.msg[7s] = "\\E1* .../"
    stog.msg[8s] = "\\E2* .../"
    stog.msg[9s] = "\\E1* .../"
    stog.msg[10s] = "\\E2* .../"
    stog.msg[11s] = "\\E4* I'm going to the&  bathroom./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.slid = 0s
    self.con = 19s
    call (scr_phoneget[]:int32 (var 220s))
    call (scr_phoneget[]:int32 (var 221s))
0x000DB0:
    if !(== self.con 19s) goto 0x000DE0
0x000DC4:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000DE4
0x000DE0:
    push 0s
0x000DE4:
    if !pop goto 0x000E44
0x000DE8:
    if !(== 782.stringno 11s) goto 0x000E10
0x000DFC:
    push (== self.slid 0s)
    goto 0x000E14
0x000E10:
    push 0s
0x000E14:
    if !pop goto 0x000E44
0x000E18:
    pushenv 1291s 0x000E34
0x000E20:
    call (event_user[]:int32 (var 0s))
0x000E34:
    popenv 0x000E20
0x000E38:
    self.slid = 1s
0x000E44:
    if !(== self.con 19s) goto 0x000E74
0x000E58:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000E78
0x000E74:
    push 0s
0x000E78:
    if !pop goto 0x000F38
0x000E7C:
    self.con = 20s
    if !(> 1570.x (int32 self.alphys):x) goto 0x000EC4
0x000EAC:
    push 180s
    stog.direction* = (int32 self.alphys)
0x000EC4:
    if !(< 1570.x (int32 self.alphys):x) goto 0x000F00
0x000EE8:
    push 0s
    stog.direction* = (int32 self.alphys)
0x000F00:
    push 6s
    stog.speed* = (int32 self.alphys)
    push 0.5d
    stog.image_speed* = (int32 self.alphys)
0x000F38:
    if !(== self.con 20s) goto 0x000FD8
0x000F4C:
    if !(< (abs[]:int32 (+ (- (int32 self.alphys):x 1291.x) 12s)) 40s) goto 0x000FD8
0x000F88:
    if !(> (int32 self.alphys):x 1570.x) goto 0x000FCC
0x000FAC:
    pushenv 1291s 0x000FC8
0x000FB4:
    call (event_user[]:int32 (var 0s))
0x000FC8:
    popenv 0x000FB4
0x000FCC:
    self.con = 21s
0x000FD8:
    if !(== self.con 21s) goto 0x0010DC
0x000FEC:
    if !(== (int32 self.alphys):direction 0s) goto 0x001038
0x00100C:
    push (>= (int32 self.alphys):x (+ 1291.x 10s))
    goto 0x00103C
0x001038:
    push 0s
0x00103C:
    if !pop goto 0x001064
0x001040:
    push 90s
    stog.direction* = (int32 self.alphys)
    self.con = 22s
0x001064:
    if !(== (int32 self.alphys):direction 180s) goto 0x0010B0
0x001084:
    push (<= (int32 self.alphys):x (+ 1291.x 15s))
    goto 0x0010B4
0x0010B0:
    push 0s
0x0010B4:
    if !pop goto 0x0010DC
0x0010B8:
    push 90s
    stog.direction* = (int32 self.alphys)
    self.con = 22s
0x0010DC:
    if !(== self.con 22s) goto 0x001184
0x0010F0:
    if !(< (int32 self.alphys):y (+ 1291.y 60s)) goto 0x001184
0x00111C:
    push 1s
    stog.d* = (int32 self.alphys)
    push (+ 1291.depth 1s)
    stog.depth* = (int32 self.alphys)
    pushenv 1291s 0x001174
0x001160:
    call (event_user[]:int32 (var 1s))
0x001174:
    popenv 0x001160
0x001178:
    self.con = 23s
0x001184:
    if !(== self.con 23s) goto 0x001274
0x001198:
    if !(< (int32 self.alphys):y (+ 1291.y 26s)) goto 0x001274
0x0011C4:
    push 270s
    stog.direction* = (int32 self.alphys)
    push 0s
    stog.speed* = (int32 self.alphys)
    push 0.1d
    stog.image_speed* = (int32 self.alphys)
    push (+ 1291.y 25s)
    stog.y* = (int32 self.alphys)
    self.con = 24s
    global.plot = 127s
    global.interact = 0s
    pushenv 1290s 0x001270
0x001264:
    call (instance_destroy[]:int32 )
0x001270:
    popenv 0x001264
0x001274:
    exit
