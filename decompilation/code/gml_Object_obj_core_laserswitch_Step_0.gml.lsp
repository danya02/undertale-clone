0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000F0
0x000030:
    call (snd_play[]:int32 (var 106s))
    [obj_bluelaser_o].hspeed = -6s
    [obj_bluelaser_o].active = 1s
    [obj_bluelaser_o].rememberhspeed = 6s
    self.con = 1s
    self.sprite_index = 1854s
    self.fader = 1s
    pushenv 1183s 0x0000A0
0x000094:
    self.canttalk = 1s
0x0000A0:
    popenv 0x000094
0x0000A4:
    self.ff2 = (instance_create[]:int32 (var 1183s) (var 80s) (var 160s))
    push 5s
    stog.image_yscale* = (int32 self.ff2)
    global.plot = 180s
0x0000F0:
    if !(== self.fader 1s) goto 0x0001DC
0x000104:
    if !(bool (instance_exists[]:int32 self.ff)) goto 0x0001DC
0x00011C:
    pushenv (int32 self.ff) 0x000190
0x00012C:
    self.canttalk = 1s
    if !(bool (instance_exists[]:int32 self.solid1)) goto 0x000170
0x000150:
    pushenv (int32 self.solid1) 0x00016C
0x000160:
    call (instance_destroy[]:int32 )
0x00016C:
    popenv 0x000160
0x000170:
    self.image_alpha = (- self.image_alpha 0.1d)
0x000190:
    popenv 0x00012C
0x000194:
    if !(< (int32 self.ff):image_alpha 0.1d) goto 0x0001DC
0x0001BC:
    pushenv (int32 self.ff) 0x0001D8
0x0001CC:
    call (instance_destroy[]:int32 )
0x0001D8:
    popenv 0x0001CC
0x0001DC:
    if !(== self.pcon 40s) goto 0x000434
0x0001F0:
    if !(> 1570.x 540s) goto 0x00022C
0x000204:
    if !(== global.interact 0s) goto 0x00022C
0x000218:
    push (== self.pcon 40s)
    goto 0x000230
0x00022C:
    push 0s
0x000230:
    if !pop goto 0x000434
0x000234:
    global.interact = 1s
    self.pcon = 41s
    call (snd_play[]:int32 (var 104s))
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Oh my god^1, are&  you okay?/"
    stog.msg[3s] = "\\E8* I..^1. I'm sorry^1, I&  gave you the&  wrong order./"
    stog.msg[4s] = "\\E8* .../"
    stog.msg[5s] = "\\E6* E-everything's fine^1,&  okay?/"
    stog.msg[6s] = "* L-let's just keep&  heading to the&  right./"
    stog.msg[7s] = "\\TS \\F0 \\T0 %"
    stog.msg[8s] = "* Click.../%%"
    if !(> self.remhp global.hp) goto 0x000428
0x000350:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Oh my god..^1.&* Are you hurt?/"
    stog.msg[3s] = "\\E8* I..^1. I'm so sorry^1,&  I... I gave you&  the wrong order./"
    stog.msg[4s] = "\\E8* .../"
    stog.msg[5s] = "\\E6* Everything's going&  to be fine^1, okay?/"
    stog.msg[6s] = "* L-let's just keep&  heading to the&  right./"
    stog.msg[7s] = "\\TS \\F0 \\T0 %"
    stog.msg[8s] = "* Click.../%%"
0x000428:
    call (scr_regulartext[]:int32 )
0x000434:
    if !(== self.pcon 41s) goto 0x000464
0x000448:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000468
0x000464:
    push 0s
0x000468:
    if !pop goto 0x000490
0x00046C:
    global.plot = 181s
    self.pcon = 42s
    global.interact = 0s
0x000490:
    exit
