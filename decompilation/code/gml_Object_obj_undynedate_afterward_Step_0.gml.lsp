0x000000:
    if !(== self.con 1s) goto 0x00005C
0x000014:
    global.facing = 1s
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x00005C
0x000038:
    [obj_mainchara].x = 120s
    [obj_mainchara].y = 160s
    global.interact = 1s
0x00005C:
    if !(== self.con 2s) goto 0x0006F4
0x000070:
    global.facechoice = 5s
    global.faceemotion = 9s
    global.msc = 0s
    global.typer = 37s
    stog.msg[0s] = "* Well^1, that was&  fun^1, huh?/"
    stog.msg[1s] = "\\E6* We'll have to hang&  out again another&  time...!/"
    stog.msg[2s] = "\\E9* But^1, uh^1, somewhere&  else I guess./"
    stog.msg[3s] = "\\E0* In the meantime^1,&  I guess I'll go&  hang with Papyrus./"
    stog.msg[4s] = "* So if you need&  me^1, drop by Snowdin^1,&  OK!?/"
    stog.msg[5s] = "\\E1* OH^1!&* And if you ever&  need help.../"
    stog.msg[6s] = "\\E9* Just give Papyrus a&  ring^1, ok?/"
    stog.msg[7s] = "\\E0* Since we're in the&  same spot^1, I'll be&  able to talk too!/"
    stog.msg[8s] = "\\E6* Well^1, see ya&  later^1, punk!!/%%"
    self.con = 3s
    call (ini_open[]:int32 (var "undertale.ini"))
    self.won = (ini_read_real[]:int32 (var 0s) (var "Won") (var "General"))
    call (ini_close[]:int32 )
    self.d = 0s
    if !(< self.won 1s) goto 0x000204
0x0001F8:
    self.d = 1s
0x000204:
    push -5s
    if !(< 389s:flag 3s) goto 0x00022C
0x000220:
    self.d = 1s
0x00022C:
    if !(> global.kills 0s) goto 0x00024C
0x000240:
    self.d = 1s
0x00024C:
    if !(<= global.plot 198s) goto 0x00026C
0x000260:
    self.d = 1s
0x00026C:
    push -5s
    if !(>= 493s:flag 8s) goto 0x000294
0x000288:
    self.d = 1s
0x000294:
    if !(== self.d 0s) goto 0x0006D0
0x0002A8:
    call (scr_itemget[]:int32 (var 56s))
    if !(== self.noroom 0s) goto 0x000540
0x0002D0:
    stog.msg[0s] = "* Well^1, that was&  fun^1, huh?/"
    stog.msg[1s] = "\\E6* We'll have to hang&  out again another&  time...!/"
    stog.msg[2s] = "\\E9* But^1, uh^1, somewhere&  else I guess./"
    stog.msg[3s] = "\\E0* In the meantime^1,&  I guess I'll go&  hang with Papyrus./"
    stog.msg[4s] = "* So if you need&  me^1, drop by Snowdin^1,&  OK!?/"
    stog.msg[5s] = "\\E1* OH^1!&* And if you ever&  need help.../"
    stog.msg[6s] = "\\E9* Just give Papyrus a&  ring^1, ok?/"
    stog.msg[7s] = "\\E0* Since we're in the&  same spot^1, I'll be&  able to talk too!/"
    stog.msg[8s] = "\\E6* Well^1, see ya&  later^1, punk.../"
    stog.msg[9s] = "\\E1* OH!!^1!&* WAIT!!/"
    stog.msg[10s] = "\\E0* This is sudden^1, but.../"
    stog.msg[11s] = "\\E9* Can you deliver&  something for me?/"
    stog.msg[12s] = "\\E0* Papyrus suggested&  that I ask you./"
    stog.msg[13s] = "\\E3* But he told me when&  I still hated you^1,&  so.../"
    stog.msg[14s] = "\\E1* Uh^1! Anyway!!^1!&* Here^1! Just take it!/"
    stog.msg[15s] = "\\TS \\F0 \\T0 %"
    stog.msg[16s] = "* (You got the Undyne's&  Letter.)/"
    call (scr_undface[]:int32 (var 2s) (var 17s))
    stog.msg[18s] = "* Well^1, what are you&  waiting for!?/"
    stog.msg[19s] = "\\E1* Go deliver it!!!/"
    stog.msg[20s] = "* .../"
    stog.msg[21s] = "\\E9* Uhhhh..^1.&* Oh^1, yeah.../"
    stog.msg[22s] = "* It's addressed to&  Dr. Alphys./"
    stog.msg[23s] = "\\E6* OK^1, see you!!/%%"
    stog.flag[8s] = 1s
    stog.flag[493s] = 9s
    goto 0x0006D0
0x000540:
    stog.msg[0s] = "* Well^1, that was&  fun^1, huh?/"
    stog.msg[1s] = "\\E6* We'll have to hang&  out again another&  time...!/"
    stog.msg[2s] = "\\E9* But^1, uh^1, somewhere&  else I guess./"
    stog.msg[3s] = "\\E0* In the meantime^1,&  I guess I'll go&  hang with Papyrus./"
    stog.msg[4s] = "* So if you need&  me^1, drop by Snowdin^1,&  OK!?/"
    stog.msg[5s] = "\\E1* OH^1!&* And if you ever&  need help.../"
    stog.msg[6s] = "\\E9* Just give Papyrus a&  ring^1, ok?/"
    stog.msg[7s] = "\\E0* Since we're in the&  same spot^1, I'll be&  able to talk too!/"
    stog.msg[8s] = "\\E6* Well^1, see ya&  later^1, punk.../"
    stog.msg[9s] = "\\E1* OH!!^1!&* WAIT!!/"
    stog.msg[10s] = "\\E0* This is sudden^1, but.../"
    stog.msg[11s] = "* Can you.../"
    stog.msg[12s] = "\\E1* Hey^1, wait^1!&* Your inventory's&  full./"
    stog.msg[13s] = "\\E9* Uh^1, well^1, I'll be&  at Papyrus's./"
    stog.msg[14s] = "\\E6* Come see me when&  you have less&  stuff!/%%"
    stog.flag[493s] = 8s
    stog.flag[8s] = 1s
0x0006D0:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0006F4:
    if !(== self.con 3s) goto 0x000724
0x000708:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000728
0x000724:
    push 0s
0x000728:
    if !pop goto 0x0007BC
0x00072C:
    stog.flag[20s] = 2s
    push 6s
    stog.vspeed* = (int32 self.undyne)
    push 0.5d
    stog.image_speed* = (int32 self.undyne)
    push 1404s
    stog.sprite_index* = (int32 self.undyne)
    self.con = 4s
    global.facing = 0s
    stog.alarm[4s] = 60s
0x0007BC:
    if !(== self.con 5s) goto 0x000828
0x0007D0:
    self.con = 6s
    global.facing = 1s
    global.interact = 0s
    stog.flag[389s] = 4s
    stog.flag[465s] = 1s
    call (instance_destroy[]:int32 )
0x000828:
    exit
