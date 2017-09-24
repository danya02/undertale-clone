0x000000:
    if !(== global.interact 0s) goto 0x00003C
0x000014:
    if !(> 1570.x 200s) goto 0x00003C
0x000028:
    push (== self.con 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00005C
0x000044:
    global.interact = 1s
    self.con = 10s
0x00005C:
    if !(== self.con 10s) goto 0x0003AC
0x000070:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* M..^1. more lasers.../"
    stog.msg[3s] = "\\E8* Okay^1, I..^1.&* I won't mess around&  this time./"
    stog.msg[4s] = "\\E6* I'll just deactivate&  the lasers and let&  you through./"
    stog.msg[5s] = "\\E3* .../"
    stog.msg[6s] = "\\E3* They're..^1.&* They're not turning&  off.../"
    stog.msg[7s] = "\\E8* I can't turn them&  off^1, I.../"
    stog.msg[8s] = "\\E6* I-i-it's okay^1!&* I have this under&  control!/"
    stog.msg[9s] = "* I'm going to turn&  off the p-power for&  that whole node./"
    stog.msg[10s] = "* Then you can walk&  across./"
    stog.msg[11s] = "\\E3* .../"
    stog.msg[12s] = "\\E6* Okay^1, go!/"
    stog.msg[13s] = "\\TS \\F0 \\T0 %"
    stog.msg[14s] = "* Click.../%%"
    push -5s
    if !(== 417s:flag 0s) goto 0x000394
0x000214:
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* H..^1. huh?&* I..^1. I guess this&  was the right way./"
    stog.msg[3s] = "* M..^1. more lasers.../"
    stog.msg[4s] = "\\E8* Okay^1, I..^1.&* I won't mess around&  this time./"
    stog.msg[5s] = "\\E6* I'll just deactivate&  the lasers and let&  you through./"
    stog.msg[6s] = "\\E3* .../"
    stog.msg[7s] = "\\E3* They're..^1.&* They're not turning&  off.../"
    stog.msg[8s] = "\\E8* I can't turn them&  off^1, I.../"
    stog.msg[9s] = "\\E6* I-i-it's okay^1!&* I have this under&  control!/"
    stog.msg[10s] = "* I'm going to turn&  off the p-power for&  that whole node./"
    stog.msg[11s] = "* Then you can walk&  across./"
    stog.msg[12s] = "\\E3* .../"
    stog.msg[13s] = "\\E6* Okay^1, go!/"
    stog.msg[14s] = "\\TS \\F0 \\T0 %"
    stog.msg[15s] = "* Click.../%%"
0x000394:
    call (scr_regulartext[]:int32 )
    self.con = 11s
0x0003AC:
    if !(== self.con 11s) goto 0x0003DC
0x0003C0:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x0003E0
0x0003DC:
    push 0s
0x0003E0:
    if !pop goto 0x000428
0x0003E4:
    if !(== 782.stringno 12s) goto 0x00040C
0x0003F8:
    push (== self.powered 0s)
    goto 0x000410
0x00040C:
    push 0s
0x000410:
    if !pop goto 0x000428
0x000414:
    call (event_user[]:int32 (var 1s))
0x000428:
    if !(== self.con 11s) goto 0x000458
0x00043C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00045C
0x000458:
    push 0s
0x00045C:
    if !pop goto 0x0004B8
0x000460:
    self.ff = (instance_create[]:int32 (var 1183s) (var 80s) (var 20s))
    push 5s
    stog.image_yscale* = (int32 self.ff)
    self.con = 12s
    global.interact = 0s
0x0004B8:
    if !(== self.con 12s) goto 0x0004F4
0x0004CC:
    if !(> 1570.x 580s) goto 0x0004F4
0x0004E0:
    push (== global.interact 0s)
    goto 0x0004F8
0x0004F4:
    push 0s
0x0004F8:
    if !pop goto 0x000514
0x0004FC:
    global.interact = 1s
    self.con = 13s
0x000514:
    if !(== self.con 13s) goto 0x0005A8
0x000528:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* W-WAIT^1!&* STOP!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 14s
0x0005A8:
    if !(== self.con 14s) goto 0x0005D8
0x0005BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005DC
0x0005D8:
    push 0s
0x0005DC:
    if !pop goto 0x000614
0x0005E0:
    call (event_user[]:int32 (var 2s))
    self.con = 15s
    stog.alarm[4s] = 45s
0x000614:
    if !(== self.con 16s) goto 0x000724
0x000628:
    global.msc = 0s
    stog.msg[0s] = "\\E8* Th-the power..^1.&* It's turning itself&  back on./"
    stog.msg[1s] = "\\E9* D-damn it..^1.&* Th-this isn't supposed&  to.../"
    stog.msg[2s] = "* I.../"
    stog.msg[3s] = "\\E3* I'm gonna turn&  it off again./"
    stog.msg[4s] = "* When it turns off^1,&  move a little^1, and&  then STOP./"
    stog.msg[5s] = "\\E8* OK^1?&* Y-you won't get&  h-h-hurt./"
    stog.msg[6s] = "\\TS \\F0 \\T0 %"
    stog.msg[7s] = "* Click.../%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 17s
0x000724:
    if !(== self.con 17s) goto 0x000754
0x000738:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000758
0x000754:
    push 0s
0x000758:
    if !pop goto 0x0007C4
0x00075C:
    self.remhp = global.hp
    global.interact = 0s
    self.flasher = 0s
    call (event_user[]:int32 (var 1s))
    self.con = 18s
    stog.alarm[3s] = 37s
    self.backuptimer = 10s
0x0007C4:
    if !(== self.con 18s) goto 0x000844
0x0007D8:
    push -1s
    if !(== 3s:alarm -1s) goto 0x000810
0x0007F4:
    self.backuptimer = (- self.backuptimer 1s)
    goto 0x00081C
0x000810:
    self.backuptimer = 8s
0x00081C:
    if !(< self.backuptimer 0s) goto 0x000844
0x000830:
    stog.alarm[3s] = 37s
0x000844:
    if !(== self.con 18s) goto 0x000984
0x000858:
    if !(< global.hp self.remhp) goto 0x000884
0x000870:
    push (== self.hptalk 0s)
    goto 0x000888
0x000884:
    push 0s
0x000888:
    if !pop goto 0x000984
0x00088C:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Oh my god^1, are&  you okay!?/"
    stog.msg[3s] = "\\E8* I-I c-couldn't keep&  the power off&  long enough.../"
    stog.msg[4s] = "\\E6* No^1, no^1, we've&  got this^1, it's just&  a little further!/"
    stog.msg[5s] = "\\TS \\F0 \\T0 %"
    stog.msg[6s] = "* Click.../%%"
    self.con = 19s
    self.hptalk = 1s
    call (scr_regulartext[]:int32 )
    global.interact = 1s
0x000984:
    if !(== self.con 19s) goto 0x0009AC
0x000998:
    push (== self.hptalk 1s)
    goto 0x0009B0
0x0009AC:
    push 0s
0x0009B0:
    if !pop goto 0x0009C0
0x0009B4:
    global.interact = 1s
0x0009C0:
    if !(== self.con 19s) goto 0x000A04
0x0009D4:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000A04
0x0009F0:
    push (== self.hptalk 1s)
    goto 0x000A08
0x000A04:
    push 0s
0x000A08:
    if !pop goto 0x000A30
0x000A0C:
    self.hptalk = 2s
    global.interact = 0s
    self.con = 18s
0x000A30:
    if !(== self.con 18s) goto 0x000A58
0x000A44:
    push (> 1570.x 1040s)
    goto 0x000A5C
0x000A58:
    push 0s
0x000A5C:
    if !pop goto 0x000A78
0x000A60:
    global.interact = 1s
    self.con = 22s
0x000A78:
    if !(== self.con 22s) goto 0x000BE0
0x000A8C:
    call (snd_play[]:int32 (var 104s))
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E6 \\F6 \\TA %"
    stog.msg[2s] = "* S-see^1?&* I've got everything&  under control./"
    stog.msg[3s] = "* Everything's under&  control!/"
    stog.msg[4s] = "\\TS \\F0 \\T0 %"
    stog.msg[5s] = "* Click.../%%"
    self.con = 23s
    self.hptalk = 1s
    call (scr_regulartext[]:int32 )
    stog.alarm[3s] = -1s
    self.powered = 0s
    self.drawblack = 0s
    [obj_bluelaser_o].active = 2s
    pushenv 1183s 0x000BAC
0x000BA0:
    call (instance_destroy[]:int32 )
0x000BAC:
    popenv 0x000BA0
0x000BB0:
    call (instance_create[]:int32 (var 1339s) (var 120s) (var 60s))
    global.plot = 184s
0x000BE0:
    if !(== self.con 23s) goto 0x000C10
0x000BF4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000C14
0x000C10:
    push 0s
0x000C14:
    if !pop goto 0x000C3C
0x000C18:
    global.interact = 0s
    self.con = 24s
    call (instance_destroy[]:int32 )
0x000C3C:
    exit
