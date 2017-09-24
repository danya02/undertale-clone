0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.myinteract 1s) goto 0x0002DC
0x000048:
    if !(== self.con 0s) goto 0x0002D0
0x00005C:
    global.interact = 1s
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    self.skip = 0s
    stog.msg[0s] = "* Art Club: Meet here!&* Next meeting:&* October 10th 8PM/%%"
    if !(== self.murd 1s) goto 0x000100
0x0000DC:
    self.skip = 1s
    stog.msg[0s] = "* (Art club is cancelled!)/%%"
0x000100:
    push -5s
    if !(== 281s:flag 1s) goto 0x000140
0x00011C:
    stog.msg[0s] = "* (Art is dead.)/%%"
    self.skip = 1s
0x000140:
    push -5s
    if !(== 281s:flag 2s) goto 0x000180
0x00015C:
    stog.msg[0s] = "* Let's meet again someday!/%%"
    self.skip = 1s
0x000180:
    push -5s
    if (== 7s:flag 1s) goto 0x0001B8
0x00019C:
    push -5s
    push (== 8s:flag 1s)
    goto 0x0001BC
0x0001B8:
    push 1s
0x0001BC:
    if !pop goto 0x0001E4
0x0001C0:
    stog.msg[0s] = "* Who knows what lies in the&  future for Art Club!?/%%"
    self.skip = 1s
0x0001E4:
    if !(== self.skip 0s) goto 0x00020C
0x0001F8:
    push (> global.plot 164s)
    goto 0x000210
0x00020C:
    push 0s
0x000210:
    if !pop goto 0x00028C
0x000214:
    if !(== self.current_month 10s) goto 0x00023C
0x000228:
    push (== self.current_day 10s)
    goto 0x000240
0x00023C:
    push 0s
0x000240:
    if !pop goto 0x00028C
0x000244:
    if (== self.current_hour 8s) goto 0x00026C
0x000258:
    push (== self.current_hour 20s)
    goto 0x000270
0x00026C:
    push 1s
0x000270:
    if !pop goto 0x00028C
0x000274:
    self.con = 1s
    self.myinteract = -1s
0x00028C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
    goto 0x0002DC
0x0002D0:
    self.myinteract = 0s
0x0002DC:
    if !(== self.myinteract 3s) goto 0x000324
0x0002F0:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x000324
0x00030C:
    global.interact = 0s
    self.myinteract = 0s
0x000324:
    if !(== self.con 1s) goto 0x000354
0x000338:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000358
0x000354:
    push 0s
0x000358:
    if !pop goto 0x0003A8
0x00035C:
    global.facing = 0s
    call (snd_play[]:int32 (var 50s))
    self.con = 2s
    stog.alarm[4s] = 60s
    global.interact = 1s
0x0003A8:
    if !(== self.con 2s) goto 0x0003D8
0x0003BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003DC
0x0003D8:
    push 0s
0x0003DC:
    if !pop goto 0x0003F8
0x0003E0:
    global.facing = 0s
    global.interact = 1s
0x0003F8:
    if !(== self.con 3s) goto 0x000428
0x00040C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00042C
0x000428:
    push 0s
0x00042C:
    if !pop goto 0x000478
0x000430:
    stog.msg[0s] = "* Ahhhh!!^1!&* I'm late!!^1!&* I'm late!!!/"
    stog.msg[1s] = "* I'm so sorry!!!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 4s
0x000478:
    if !(== self.con 4s) goto 0x0004A8
0x00048C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0004AC
0x0004A8:
    push 0s
0x0004AC:
    if !pop goto 0x000550
0x0004B0:
    call (snd_play[]:int32 (var 20s))
    self.sory = (scr_marker[]:int32 (var 1670s) (var 240s) (- 1570.x 10s))
    push -5s
    stog.vspeed* = (int32 self.sory)
    push 1000s
    stog.depth* = (int32 self.sory)
    push 0.5d
    stog.image_speed* = (int32 self.sory)
    self.con = 5s
0x000550:
    if !(== self.con 5s) goto 0x00063C
0x000564:
    if !(<= (int32 self.sory):y (+ 1570.y 15s)) goto 0x00063C
0x000590:
    pushenv (int32 self.sory) 0x0005AC
0x0005A0:
    call (instance_destroy[]:int32 )
0x0005AC:
    popenv 0x0005A0
0x0005B0:
    call (snd_play[]:int32 (var 21s))
    self.dk = (scr_marker[]:int32 (var 996s) (var -5s) (var -5s))
    push 300s
    stog.image_xscale* = (int32 self.dk)
    push 300s
    stog.image_yscale* = (int32 self.dk)
    self.con = 6s
    stog.alarm[4s] = 40s
0x00063C:
    if !(== self.con 7s) goto 0x0006CC
0x000650:
    pushenv (int32 self.dk) 0x00066C
0x000660:
    call (instance_destroy[]:int32 )
0x00066C:
    popenv 0x000660
0x000670:
    global.battlegroup = 140s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 8s
    stog.alarm[4s] = 31s
0x0006CC:
    if !(== self.con 9s) goto 0x000724
0x0006E0:
    self.myinteract = 0s
    global.mercy = 0s
    global.interact = 0s
    self.con = 0s
    stog.alarm[4s] = -1s
0x000724:
    exit
