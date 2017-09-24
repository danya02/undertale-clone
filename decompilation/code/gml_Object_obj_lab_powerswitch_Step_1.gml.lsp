0x000000:
    if !(== self.con 5s) goto 0x000068
0x000014:
    global.interact = 1s
    call (caster_pause[]:int32 global.currentsong)
    call (snd_play[]:int32 (var 106s))
    self.con = 6s
    stog.alarm[4s] = 60s
0x000068:
    if !(== self.con 6s) goto 0x000088
0x00007C:
    global.interact = 1s
0x000088:
    if !(== self.con 7s) goto 0x0002A8
0x00009C:
    global.facing = 0s
    self.dis = (caster_load[]:int32 (var "music/sfx_disturbing.ogg"))
    call (caster_loop[]:int32 (var 0.8d) (var 0.4d) self.dis)
    self.tr = (caster_load[]:int32 (var "music/sfx_generate.ogg"))
    stog.am[0s] = (scr_marker[]:int32 (var 2126s) (var 280s) (var 60s))
    push 0.1d
    push -1s
    stog.image_speed* = (int32 0s:am)
    stog.am[1s] = (scr_marker[]:int32 (var 2126s) (var 280s) (var 120s))
    push 0.1d
    push -1s
    stog.image_speed* = (int32 1s:am)
    stog.am[2s] = (scr_marker[]:int32 (var 2126s) (var 280s) (var 160s))
    push 0.1d
    push -1s
    stog.image_speed* = (int32 2s:am)
    stog.am[3s] = (scr_marker[]:int32 (var 2126s) (var 280s) (var 220s))
    push 0.1d
    push -1s
    stog.image_speed* = (int32 3s:am)
    self.con = 8s
    stog.alarm[9s] = 30s
    stog.alarm[4s] = 350s
0x0002A8:
    if !(== self.con 9s) goto 0x000418
0x0002BC:
    call (caster_stop[]:int32 self.dis)
    self.i = 0s
    if (<= 4s 0) goto 0x000374
0x0002F4:
    push 4s
    push 0s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):am)
    push 2127s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0002F4
0x000374:
    push (- pop 1)
    pop
    stog.alarm[9s] = -1s
    stog.alarm[10s] = -1s
    global.facechoice = 0s
    global.faceemotion = 0s
    global.msc = 0s
    global.typer = 47s
    stog.msg[0s] = "* Hey^1!&* Stop!!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 10s
0x000418:
    if !(== self.con 10s) goto 0x000448
0x00042C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00044C
0x000448:
    push 0s
0x00044C:
    if !pop goto 0x000530
0x000450:
    self.con = 11s
    stog.alarm[4s] = 20s
    self.al = (instance_create[]:int32 (var 1171s) (var 280s) (var 140s))
    push 90s
    stog.direction* = (int32 self.al)
    push (int32 self.al):usprite
    stog.sprite_index* = (int32 self.al)
    push -6s
    stog.vspeed* = (int32 self.al)
    stog.hspeed* = (int32 1s:am[Altar.Decomp.Expression[]])
    push 1s
    push -1s
    stog.hspeed* = (int32 2s:am)
0x000530:
    if !(== self.con 12s) goto 0x000694
0x000544:
    self.i = 0s
    if (<= 4s 0) goto 0x0005C0
0x000568:
    push 4s
    push 2128s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000568
0x0005C0:
    push (- pop 1)
    pop
    push 0s
    stog.vspeed* = (int32 self.al)
    push 1s
    stog.fun* = (int32 self.al)
    push (int32 self.al):utsprite
    stog.sprite_index* = (int32 self.al)
    push 0s
    stog.image_speed* = (int32 self.al)
    push 0s
    push -1s
    stog.hspeed* = (int32 1s:am)
    push 0s
    push -1s
    stog.hspeed* = (int32 2s:am)
    self.con = 13s
    stog.alarm[4s] = 15s
0x000694:
    if !(== self.con 14s) goto 0x000738
0x0006A8:
    global.facechoice = 6s
    global.faceemotion = 6s
    stog.flag[430s] = 3s
    stog.msg[0s] = "* I got you guys some&  food^1, okay!?/%%"
    self.d = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.d)
    self.con = 15s
0x000738:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000768
0x000754:
    push (== self.con 15s)
    goto 0x00076C
0x000768:
    push 0s
0x00076C:
    if !pop goto 0x000824
0x000770:
    self.i = 0s
    if (<= 4s 0) goto 0x000814
0x000794:
    push 4s
    push 2126s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):am)
    push 3s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000794
0x000814:
    push (- pop 1)
    pop
    self.con = 16s
0x000824:
    if !(== self.con 16s) goto 0x000928
0x000838:
    push -1s
    push (int32 0s:am):y
    if !(> -1s (+ 0s:view_yview 300s)) goto 0x000928
0x000874:
    self.con = 20s
    self.i = 0s
    if (<= 4s 0) goto 0x000924
0x0008A4:
    push 4s
    push 2126s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):am)
    push 0s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0008A4
0x000924:
    push (- pop 1)
    pop
0x000928:
    if !(== self.con 20s) goto 0x000DC4
0x00093C:
    stog.msg[0s] = "\\E4* Sorry about that.../"
    stog.msg[1s] = "\\E2* They get kind of sassy&  when they don't get&  fed on time./"
    stog.msg[2s] = "\\E3* Um!!/"
    push -5s
    if !(> 495s:flag 0s) goto 0x0009B8
0x0009A0:
    stog.msg[2s] = "\\E3* I think they smelled&  the potato chips you&  had^1, and.../"
0x0009B8:
    stog.msg[3s] = "\\E3* Anyway!/"
    stog.msg[4s] = "\\E6* The power went out^1,&  and I've been trying&  to turn it back on!/"
    stog.msg[5s] = "\\E4* But it seems like you&  were one step ahead&  of me./"
    stog.msg[6s] = "\\E2* This was probably just&  a big inconvenience&  for you.../"
    stog.msg[7s] = "\\E4* B-but I appreciate&  that you came here&  to back me up!/"
    stog.msg[8s] = "\\E4* As I said^1, I was&  afraid I might.../"
    stog.msg[9s] = "\\E8* Not come back.../"
    stog.msg[10s] = "\\E5* But that's not because&  of these guys or&  anything!/"
    stog.msg[11s] = "\\E4* I was just worried I&  would be too afraid.../"
    stog.msg[12s] = "\\E9* To tell the truth.../"
    stog.msg[13s] = "\\E8* That I might run away^1,&  or do something.../"
    stog.msg[14s] = "\\E9* Cowardly./"
    stog.msg[15s] = "* .../"
    stog.msg[16s] = "*\\E8 Uh..^1. I..^1.&* I suppose I owe you&  an explanation./"
    stog.msg[17s] = "\\E9* As you probably know^1,&  ASGORE asked me to study&  the nature of SOULs./"
    stog.msg[18s] = "\\E3* During my research^1, I&  isolated a power I&  called \"determination.\"/"
    stog.msg[19s] = "\\E6* I injected it into dying&  monsters so their SOULs&  would last after death./"
    stog.msg[20s] = "\\E9* But the experiment&  failed./"
    stog.msg[21s] = "* You see^1, unlike humans',&  monsters' bodies don't&  have enough.../"
    stog.msg[22s] = "* Physical matter to take&  those concentrations&  of \"determination.\"/"
    stog.msg[23s] = "* Their bodies started to&  melt^1, and lost what&  physicality they had./"
    stog.msg[24s] = "\\E3* Pretty soon^1, all of the&  test subjects had melted&  together into.../"
    stog.msg[25s] = "\\E8* Those./"
    stog.msg[26s] = "\\E9* Seeing them like this^1,&  I knew.../"
    stog.msg[27s] = "\\E8* I couldn't tell their&  families about it./"
    stog.msg[28s] = "\\E8* I couldn't tell anyone&  about it./"
    stog.msg[29s] = "\\E9* No matter how much&  everyone was asking me./"
    stog.msg[30s] = "\\E9* And I was too afraid to&  do any more work^1,&  knowing.../"
    stog.msg[31s] = "\\E8* ... everything I'd done&  so far had been such&  a horrific failure./"
    stog.msg[32s] = "\\E9* ... but now./"
    stog.msg[33s] = "\\E9* Now^1, I've changed my&  mind about all this./"
    stog.msg[34s] = "\\E9* I'm going to tell&  everyone what I've done./"
    stog.msg[35s] = "\\E9* .../"
    stog.msg[36s] = "* It's going to be hard./"
    stog.msg[37s] = "* Being honest..^1.&* Believing in myself.../"
    stog.msg[38s] = "* I'm sure there will be&  times where I'll&  struggle./"
    stog.msg[39s] = "* I'm sure there will be&  times where I screw&  up again./"
    stog.msg[40s] = "\\E0* But knowing^1, deep down^1,&  that I have friends&  to fall back on.../"
    stog.msg[41s] = "\\E7* I know it'll be a&  lot easier to stand&  on my own./"
    stog.msg[42s] = "* Thank you./%%"
    self.con = 21s
    self.d = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.d)
0x000DC4:
    if !(== self.con 21s) goto 0x000DF0
0x000DD8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000DF4
0x000DF0:
    push 0s
0x000DF4:
    if !pop goto 0x000F78
0x000DF8:
    self.sn = 782.stringno
    if !(== self.sn 0s) goto 0x000E44
0x000E1C:
    push (int32 self.al):rtsprite
    stog.sprite_index* = (int32 self.al)
0x000E44:
    if (== self.sn 1s) goto 0x000EA8
0x000E58:
    if (== self.sn 3s) goto 0x000EA8
0x000E6C:
    if (== self.sn 6s) goto 0x000EA8
0x000E80:
    if (== self.sn 9s) goto 0x000EA8
0x000E94:
    push (== self.sn 19s)
    goto 0x000EAC
0x000EA8:
    push 1s
0x000EAC:
    if !pop goto 0x000ED8
0x000EB0:
    push (int32 self.al):utsprite
    stog.sprite_index* = (int32 self.al)
0x000ED8:
    if (== self.sn 2s) goto 0x000F00
0x000EEC:
    push (== self.sn 5s)
    goto 0x000F04
0x000F00:
    push 1s
0x000F04:
    if !pop goto 0x000F30
0x000F08:
    push (int32 self.al):rtsprite
    stog.sprite_index* = (int32 self.al)
0x000F30:
    if (== self.sn 8s) goto 0x000F58
0x000F44:
    push (== self.sn 13s)
    goto 0x000F5C
0x000F58:
    push 1s
0x000F5C:
    if !pop goto 0x000F78
0x000F60:
    push 1645s
    stog.sprite_index* = (int32 self.al)
0x000F78:
    if !(== self.con 21s) goto 0x000FA8
0x000F8C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FAC
0x000FA8:
    push 0s
0x000FAC:
    if !pop goto 0x001078
0x000FB0:
    self.i = 0s
    if (<= 4s 0) goto 0x001054
0x000FD4:
    push 4s
    push 2126s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):am)
    push -3s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x000FD4
0x001054:
    push (- pop 1)
    pop
    self.con = 22s
    stog.alarm[4s] = 30s
0x001078:
    if !(== self.con 23s) goto 0x0011A4
0x00108C:
    self.i = 0s
    if (<= 4s 0) goto 0x001158
0x0010B0:
    push 4s
    push 2126s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):am)
    push 0s
    push -1s
    stog.image_speed* = (int32 (int32 self.i):am)
    push 0s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0010B0
0x001158:
    push (- pop 1)
    pop
    push (int32 self.al):dtsprite
    stog.sprite_index* = (int32 self.al)
    self.con = 24s
    stog.alarm[4s] = 30s
0x0011A4:
    if !(== self.con 25s) goto 0x001234
0x0011B8:
    stog.msg[0s] = "* Come on^1, guys./"
    stog.msg[1s] = "* It's time for everyone&  to go home./%%"
    self.ds = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.ds)
    self.con = 26s
0x001234:
    if !(== self.con 26s) goto 0x001264
0x001248:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001268
0x001264:
    push 0s
0x001268:
    if !pop goto 0x0013C4
0x00126C:
    push 3s
    stog.vspeed* = (int32 self.al)
    push (int32 self.al):dsprite
    stog.sprite_index* = (int32 self.al)
    push 0.25d
    stog.image_speed* = (int32 self.al)
    self.i = 0s
    if (<= 4s 0) goto 0x0013A0
0x0012F0:
    push 4s
    push 2126s
    push -1s
    stog.sprite_index* = (int32 (int32 self.i):am)
    push 0.25d
    push -1s
    stog.image_speed* = (int32 (int32 self.i):am)
    push 3s
    push -1s
    stog.vspeed* = (int32 (int32 self.i):am)
    self.i = (+ self.i 1s)
    if (bool (- pop 1)) goto 0x0012F0
0x0013A0:
    push (- pop 1)
    pop
    self.con = 27s
    stog.alarm[4s] = 60s
0x0013C4:
    if !(== self.con 28s) goto 0x00148C
0x0013D8:
    pushenv 1570s 0x0013EC
0x0013E0:
    self.uncan = 0s
0x0013EC:
    popenv 0x0013E0
0x0013F0:
    global.interact = 0s
    stog.flag[430s] = 0s
    stog.flag[485s] = 1s
    stog.flag[493s] = 12s
    stog.flag[454s] = 1s
    if !(< global.plot 201s) goto 0x00146C
0x001460:
    global.plot = 201s
0x00146C:
    self.con = 0s
    call (caster_resume[]:int32 global.currentsong)
0x00148C:
    exit
