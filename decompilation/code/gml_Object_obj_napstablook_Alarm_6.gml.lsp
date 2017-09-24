0x000000:
    push -5s
    if !(> (int32 self.myself):monsterhp 0s) goto 0x000560
0x000024:
    self.blcon = (instance_create[]:int32 (var 186s) (+ self.ystart 24s) (+ (+ self.x self.sprite_width) 21s))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(>= self.mycommand 0s) goto 0x0000B0
0x00009C:
    push (< self.mycommand 40s)
    goto 0x0000B4
0x0000B0:
    push 0s
0x0000B4:
    if !pop goto 0x0000D0
0x0000B8:
    stog.msg[0s] = "i'm&fine,&thanks."
0x0000D0:
    if !(>= self.mycommand 40s) goto 0x0000F8
0x0000E4:
    push (< self.mycommand 66s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x000118
0x000100:
    stog.msg[0s] = "just&pluggin&along..."
0x000118:
    if !(>= self.mycommand 66s) goto 0x00013C
0x00012C:
    push (bool self.mycommand)
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x00015C
0x000144:
    stog.msg[0s] = "nnnnnn&ggghhh."
0x00015C:
    if !(== self.whatiheard 0s) goto 0x000188
0x000170:
    stog.msg[0s] = "oh, i'm&REAL&funny."
0x000188:
    if !(== self.whatiheard 1s) goto 0x0001B4
0x00019C:
    stog.msg[0s] = "go&ahead,&do it."
0x0001B4:
    if !(== self.whatiheard 3s) goto 0x0001E0
0x0001C8:
    stog.msg[0s] = "i'd just&weigh&you&down."
0x0001E0:
    if !(== self.whatiheard 4s) goto 0x00020C
0x0001F4:
    stog.msg[0s] = "heh..."
0x00020C:
    if !(== self.whatiheard 4s) goto 0x000234
0x000220:
    push (> self.mercymod -300s)
    goto 0x000238
0x000234:
    push 0s
0x000238:
    if !pop goto 0x000254
0x00023C:
    stog.msg[0s] = "heh&heh..."
0x000254:
    if !(== self.whatiheard 4s) goto 0x00027C
0x000268:
    push (> self.mercymod -200s)
    goto 0x000280
0x00027C:
    push 0s
0x000280:
    if !pop goto 0x00029C
0x000284:
    stog.msg[0s] = "let me&try..."
0x00029C:
    if !(!= self.whatiheard 4s) goto 0x0002EC
0x0002B0:
    if !(!= self.whatiheard 3s) goto 0x0002EC
0x0002C4:
    if !(== self.mercymod -50s) goto 0x0002EC
0x0002D8:
    push (== self.mercer 0s)
    goto 0x0002F0
0x0002EC:
    push 0s
0x0002F0:
    if !pop goto 0x000348
0x0002F4:
    stog.msg[0s] = "i knew&it..."
    self.mercymod = -1200s
    if !(bool (instance_exists[]:int32 (var 621s))) goto 0x000348
0x000330:
    pushenv 621s 0x000344
0x000338:
    call (instance_destroy[]:int32 )
0x000344:
    popenv 0x000338
0x000348:
    if !(== self.whatiheard 3s) goto 0x000370
0x00035C:
    push (== self.mercymod -49s)
    goto 0x000374
0x000370:
    push 0s
0x000374:
    if !pop goto 0x0003B8
0x000378:
    stog.msg[0s] = "oh&no..."
    stog.alarm[7s] = 60s
    global.plot = 10.3d
0x0003B8:
    if !(== self.whatiheard 4s) goto 0x0003E0
0x0003CC:
    push (== self.mercymod -49s)
    goto 0x0003E4
0x0003E0:
    push 0s
0x0003E4:
    if !pop goto 0x00042C
0x0003E8:
    stog.msg[0s] = "oh&gee..."
    stog.alarm[7s] = 60s
    global.plot = 10.3d
    goto 0x0004E8
0x00042C:
    global.border = 3s
    if !(== global.turn 1s) goto 0x000458
0x00044C:
    global.border = 5s
0x000458:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
0x0004E8:
    stog.msg[1s] = "%%%"
    global.typer = 2s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 15s))
    goto 0x0006FC
0x000560:
    if !(bool (instance_exists[]:int32 self.dmgwriter)) goto 0x000598
0x000578:
    pushenv (int32 self.dmgwriter) 0x000594
0x000588:
    call (instance_destroy[]:int32 )
0x000594:
    popenv 0x000588
0x000598:
    self.blcon = (instance_create[]:int32 (var 187s) (+ self.y 24s) (+ (+ self.x self.sprite_width) 11s))
    global.msc = 0s
    stog.msg[0s] = "umm... you do&know you cant&kill ghosts, right?/"
    stog.msg[1s] = "we're sorta&incorporeal and&all/"
    stog.msg[2s] = "i was just&lowering my hp&because i didnt&want to be rude/"
    stog.msg[3s] = "sorry..^1.&i just made this&more awkward.../"
    stog.msg[4s] = "pretend you beat&  me.../"
    stog.msg[5s] = "ooooooooo^1o%%"
    global.plot = 11s
    self.conversation = 1s
    self.image_speed = 0.2d
    global.typer = 2s
    self.blconwriter = (instance_create[]:int32 (var 782s) (+ 187.y 10s) (+ 187.x 36s))
    stog.alarm[9s] = 2s
0x0006FC:
    self.mercer = 0s
0x000708:
    exit
