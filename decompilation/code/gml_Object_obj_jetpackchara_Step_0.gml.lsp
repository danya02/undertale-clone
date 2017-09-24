0x000000:
    if !(== self.won 0s) goto 0x00009C
0x000014:
    if !(bool (keyboard_check[]:int32 (var 37s))) goto 0x000058
0x00002C:
    if !(> self.x 330s) goto 0x000058
0x000040:
    self.x = (- self.x 4s)
0x000058:
    if !(bool (keyboard_check[]:int32 (var 39s))) goto 0x00009C
0x000070:
    if !(< self.x 620s) goto 0x00009C
0x000084:
    self.x = (+ self.x 4s)
0x00009C:
    if !(== self.won 0s) goto 0x0000E4
0x0000B0:
    if !(< 1196.fakev 15s) goto 0x0000E4
0x0000C4:
    [obj_counterscroller].fakev = (+ 1196.fakev 0.25d)
0x0000E4:
    self.myfakev = 1196.fakev
    self.dist = (- self.dist self.myfakev)
    if (< self.dist 200s) goto 0x000138
0x000124:
    push (< self.timertime 90s)
    goto 0x00013C
0x000138:
    push 1s
0x00013C:
    if !pop goto 0x00014C
0x000140:
    self.eligible = 0s
0x00014C:
    if !(== self.con 1s) goto 0x000198
0x000160:
    if !(< (int32 self.mett):x (+ self.xx 150s)) goto 0x000198
0x00018C:
    self.con = 2s
0x000198:
    if !(< self.dist 600s) goto 0x0001E0
0x0001AC:
    if !(bool (instance_exists[]:int32 self.mett)) goto 0x0001E0
0x0001C4:
    stog.alarm[(int32 self.mett)] = 1s
0x0001E0:
    if !(== self.con 2s) goto 0x00028C
0x0001F4:
    push 1s
    stog.overmode* = (int32 self.mett)
    if !(< (/ self.dist self.maxdist) 0.75d) goto 0x00024C
0x000234:
    push 1s
    stog.movemode* = (int32 self.mett)
0x00024C:
    if !(< (/ self.dist self.maxdist) 0.35d) goto 0x00028C
0x000274:
    push 2s
    stog.overmode* = (int32 self.mett)
0x00028C:
    if !(== self.con 10s) goto 0x00044C
0x0002A0:
    push 0s
    stog.overmode* = (int32 self.mett)
    push 0s
    stog.movemode* = (int32 self.mett)
    push 4s
    stog.mode* = (int32 self.mett)
    push 9s
    stog.con* = (int32 self.mett)
    self.wrong = 0s
    if !(< (int32 self.mett):y 200s) goto 0x000354
0x00032C:
    stog.y* = (+ (int32 self.mett):y 5s)
0x000354:
    push (int32 self.mett)
    if !(< (int32 self.mett):x 580s) goto 0x0003A8
0x000374:
    stog.x* = (+ (int32 self.mett):x 4s)
    self.wrong = 1s
0x0003A8:
    push (int32 self.mett)
    if !(> (int32 self.mett):x 590s) goto 0x0003FC
0x0003C8:
    stog.x* = (- (int32 self.mett):x 4s)
    self.wrong = 1s
0x0003FC:
    push (int32 self.mett)
    if !(== self.wrong 0s) goto 0x00044C
0x000410:
    pushenv 1184s 0x000424
0x000418:
    self.finished = 1s
0x000424:
    popenv 0x000418
0x000428:
    self.con = 11s
    [obj_counterscroller].seg = -98s
    [obj_counterscroller].on = 1s
0x00044C:
    if !(== self.con 11s) goto 0x000550
0x000460:
    if !(< (int32 self.mett):y 200s) goto 0x0004A8
0x000480:
    stog.y* = (+ (int32 self.mett):y 5s)
0x0004A8:
    push (int32 self.mett)
    if !(< (int32 self.mett):x 580s) goto 0x0004F0
0x0004C8:
    stog.x* = (+ (int32 self.mett):x 4s)
0x0004F0:
    push (int32 self.mett)
    if !(> 1196.fakev 2s) goto 0x000520
0x000504:
    [obj_counterscroller].fakev = (- 1196.fakev 1s)
    goto 0x000550
0x000520:
    self.con = 12s
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
0x000550:
    if !(== self.con 12s) goto 0x000620
0x000564:
    if !(<= 1196.seg -104s) goto 0x000590
0x000578:
    [obj_counterscroller].fakev = 0s
    self.con = 13s
0x000590:
    if !(< (int32 self.mett):y 200s) goto 0x0005D8
0x0005B0:
    stog.y* = (+ (int32 self.mett):y 5s)
0x0005D8:
    push (int32 self.mett)
    if !(< (int32 self.mett):x 580s) goto 0x000620
0x0005F8:
    stog.x* = (+ (int32 self.mett):x 4s)
0x000620:
    push (int32 self.mett)
    if !(== self.con 13s) goto 0x000754
0x000634:
    self.remx = 1570.x
    self.remy = 1570.y
    [obj_mainchara].x = 400s
    [obj_mainchara].y = 100s
    global.typer = 27s
    global.msc = 0s
    global.facechoice = 0s
    stog.msg[0s] = "* MY MY./"
    stog.msg[1s] = "* IT SEEMS YOU'VE BESTED ME./"
    stog.msg[2s] = "* BUT ONLY BECAUSE YOU HAD&  THE HELP OF THE BRILLIANT&  DOCTOR ALPHYS!/"
    stog.msg[3s] = "* OH^1, I LOATHE TO THINK OF&  WHAT WOULD HAVE HAPPENED&  TO YOU WITHOUT HER!!!/"
    stog.msg[4s] = "* WELL^1, TOODLES!!/%%"
    self.ggg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.ggg)
    self.con = 14s
0x000754:
    if !(== self.con 14s) goto 0x000784
0x000768:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000788
0x000784:
    push 0s
0x000788:
    if !pop goto 0x0007E0
0x00078C:
    stog.x* = (+ (int32 self.mett):x 8s)
    if !(> (int32 self.mett):x 800s) goto 0x0007E0
0x0007D4:
    push (int32 self.mett)
    self.con = 15s
0x0007E0:
    if !(== self.con 15s) goto 0x000854
0x0007F4:
    stog.x* = (- (int32 self.mett):x 8s)
    if !(< (int32 self.mett):x (+ self.xx 240s)) goto 0x000854
0x000848:
    push (int32 self.mett)
    self.con = 16s
0x000854:
    if !(== self.con 16s) goto 0x0008FC
0x000868:
    stog.msg[0s] = "* OH YES^1!&* ABOUT THE SUBSTITUTION.../"
    stog.msg[1s] = "* HAVEN'T YOU EVER SEEN&  A COOKING SHOW BEFORE?/"
    stog.msg[2s] = "* I ALREADY BAKED THE CAKE&  AHEAD OF TIME!!!!!&* SO FORGET IT!!!/%%"
    self.ggg = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.ggg)
    self.con = 17s
0x0008FC:
    if !(== self.con 17s) goto 0x00092C
0x000910:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000930
0x00092C:
    push 0s
0x000930:
    if !pop goto 0x000988
0x000934:
    stog.x* = (+ (int32 self.mett):x 8s)
    [obj_counterscroller].fakev = -3s
    self.con = 18s
    stog.alarm[4s] = 60s
0x000988:
    push (int32 self.mett)
    if !(== self.con 18s) goto 0x000A1C
0x00099C:
    if !(< self.x 467s) goto 0x0009C8
0x0009B0:
    self.x = (+ self.x 3s)
0x0009C8:
    if !(> self.x 473s) goto 0x0009F4
0x0009DC:
    self.x = (- self.x 3s)
0x0009F4:
    stog.x* = (+ (int32 self.mett):x 8s)
0x000A1C:
    push (int32 self.mett)
    if !(== self.con 19s) goto 0x000BF0
0x000A30:
    [obj_counterscroller].fakev = 0s
    if !(< self.y 367s) goto 0x000A6C
0x000A50:
    self.y = (+ self.y 3s)
    goto 0x000A78
0x000A6C:
    self.y = 367s
0x000A78:
    if !(< self.x 467s) goto 0x000AA4
0x000A8C:
    self.x = (+ self.x 4s)
0x000AA4:
    if !(> self.x 473s) goto 0x000AD0
0x000AB8:
    self.x = (- self.x 4s)
0x000AD0:
    if !(>= self.x 467s) goto 0x000AF8
0x000AE4:
    push (<= self.x 473s)
    goto 0x000AFC
0x000AF8:
    push 0s
0x000AFC:
    if !pop goto 0x000B0C
0x000B00:
    self.x = 470s
0x000B0C:
    push -1s
    if !(< 0s:view_yview 240s) goto 0x000B50
0x000B28:
    push -1s
    stog.view_yview[(+ 0s:view_yview 6s)] = 0s
    goto 0x000B64
0x000B50:
    stog.view_yview[0s] = 240s
0x000B64:
    push -1s
    if !(== 0s:view_yview 240s) goto 0x000BA8
0x000B80:
    if !(== self.x 470s) goto 0x000BA8
0x000B94:
    push (== self.y 367s)
    goto 0x000BAC
0x000BA8:
    push 0s
0x000BAC:
    if !pop goto 0x000BF0
0x000BB0:
    pushenv (int32 self.mett) 0x000BCC
0x000BC0:
    call (instance_destroy[]:int32 )
0x000BCC:
    popenv 0x000BC0
0x000BD0:
    stog.view_yview[0s] = 240s
    self.con = 20s
0x000BF0:
    if !(== self.con 20s) goto 0x000C1C
0x000C04:
    self.con = 21s
    [obj_cookshowevent].con = 70s
0x000C1C:
    if !(== self.con 30s) goto 0x000E30
0x000C30:
    if !(< 1196.fakev 0s) goto 0x000C64
0x000C44:
    [obj_counterscroller].fakev = (+ 1196.fakev 0.25d)
0x000C64:
    if !(> 1196.fakev 0s) goto 0x000C98
0x000C78:
    [obj_counterscroller].fakev = (- 1196.fakev 0.25d)
0x000C98:
    if !(< (abs[]:int32 1196.fakev) 0.5d) goto 0x000CC8
0x000CBC:
    [obj_counterscroller].fakev = 0s
0x000CC8:
    push 0s
    stog.overmode* = (int32 self.mett)
    push 0s
    stog.movemode* = (int32 self.mett)
    stog.alarm[(int32 self.mett)] = 1s
    if !(< (int32 self.mett):y 200s) goto 0x000D5C
0x000D34:
    stog.y* = (+ (int32 self.mett):y 5s)
0x000D5C:
    push (int32 self.mett)
    if !(< (int32 self.mett):x 580s) goto 0x000DA4
0x000D7C:
    stog.x* = (+ (int32 self.mett):x 4s)
0x000DA4:
    push (int32 self.mett)
    if !(< (abs[]:int32 1196.fakev) 0.5d) goto 0x000E30
0x000DC8:
    pushenv 1184s 0x000DDC
0x000DD0:
    self.finished = 1s
0x000DDC:
    popenv 0x000DD0
0x000DE0:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    [obj_counterscroller].fakev = 0s
    self.con = 31s
    stog.alarm[4s] = 15s
0x000E30:
    if !(== self.con 32s) goto 0x000F24
0x000E44:
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* Wh-what!^1?&* Wh-why aren't you&  m-m-moving?/"
    stog.msg[3s] = "* N-no...^1!&* I must not have&  added enough fuel!/"
    stog.msg[4s] = "\\E8* D-darnit..^1.&* I'm sorry.../"
    stog.msg[5s] = "* Even when it's&  something like&  this^1, I.../"
    stog.msg[6s] = "* I still...^1!&* I still.../%%"
    call (scr_regulartext[]:int32 )
    call (snd_play[]:int32 (var 104s))
    self.con = 33s
0x000F24:
    if !(== self.con 33s) goto 0x000FC8
0x000F38:
    if !(< (int32 self.mett):y 240s) goto 0x000F80
0x000F58:
    stog.y* = (+ (int32 self.mett):y 5s)
0x000F80:
    push (int32 self.mett)
    if !(< (int32 self.mett):x 580s) goto 0x000FC8
0x000FA0:
    stog.x* = (+ (int32 self.mett):x 4s)
0x000FC8:
    push (int32 self.mett)
    if !(== self.con 33s) goto 0x000FF8
0x000FDC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000FFC
0x000FF8:
    push 0s
0x000FFC:
    if !pop goto 0x001194
0x001000:
    stog.flag[377s] = 1s
    global.typer = 27s
    global.facechoice = 0s
    stog.msg[0s] = "* OH NO^1, WOULD YOU LOOK AT&  THAT!/"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "* What?/"
    stog.msg[3s] = "\\TS \\E0 \\F0 \\TM %"
    stog.msg[4s] = "* I FORGOT!&* RIGHT ABOUT NOW IS WHEN&  WE HAVE OUR COMMERCIAL BREAK!/"
    stog.msg[5s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[6s] = "* Wh..^1.&* What are you...%"
    stog.msg[7s] = "\\TS \\E0 \\F0 \\TM %"
    stog.msg[8s] = "* UNFORTUNATELY, THAT MEANS&  NO ONE IS WATCHING THIS&  RIGHT NOW./"
    stog.msg[9s] = "* I'M NOT GOING TO DESTROY&  YOU WITHOUT A LIVE&  TELEVISION AUDIENCE!!/"
    stog.msg[10s] = "* LOOKS LIKE YOU'VE FOILED ME&  ONCE AGAIN, THANKS TO THE&  BRILLIANT DR. ALPHYS!!!/"
    stog.msg[11s] = "* UNTIL NEXT TIME, BEAUTIFUL!/"
    stog.msg[12s] = "* TOODLES!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 34s
0x001194:
    if !(== self.con 34s) goto 0x0011C0
0x0011A8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x0011C4
0x0011C0:
    push 0s
0x0011C4:
    if !pop goto 0x001210
0x0011C8:
    if !(< (int32 self.mett):y 240s) goto 0x001210
0x0011E8:
    stog.y* = (+ (int32 self.mett):y 5s)
0x001210:
    push (int32 self.mett)
    if !(== self.con 34s) goto 0x001240
0x001224:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001244
0x001240:
    push 0s
0x001244:
    if !pop goto 0x001274
0x001248:
    pushenv (int32 self.mett) 0x001264
0x001258:
    self.vspeed = -4s
0x001264:
    popenv 0x001258
0x001268:
    self.con = 17s
0x001274:
    if !(<= self.dist 1s) goto 0x0012B0
0x001288:
    if !(>= self.timertime 0s) goto 0x0012B0
0x00129C:
    push (== self.won 0s)
    goto 0x0012B4
0x0012B0:
    push 0s
0x0012B4:
    if !pop goto 0x0012D0
0x0012B8:
    self.won = 1s
    self.con = 10s
0x0012D0:
    if !(> self.dist 1s) goto 0x00130C
0x0012E4:
    if !(<= self.timertime 0s) goto 0x00130C
0x0012F8:
    push (== self.won 0s)
    goto 0x001310
0x00130C:
    push 0s
0x001310:
    if !pop goto 0x00132C
0x001314:
    self.won = 2s
    self.con = 30s
0x00132C:
    exit
