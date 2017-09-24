0x000000:
    self.dingus = (+ self.dingus 1s)
    if !(== global.plot 24s) goto 0x000040
0x00002C:
    push (== self.dingus 2s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000084
0x000048:
    call (instance_create[]:int32 (var 861s) (var 50s) (var 140s))
    [obj_toroverworld3].facing = 2s
    [obj_toroverworld3].direction = 90s
0x000084:
    if !(== self.conversation 2s) goto 0x0000B4
0x000098:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000F0
0x0000BC:
    stog.alarm[1s] = 20s
    stog.flag[45s] = 3s
    self.conversation = 3s
0x0000F0:
    if !(== self.conversation 9s) goto 0x000120
0x000104:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000124
0x000120:
    push 0s
0x000124:
    if !pop goto 0x000134
0x000128:
    global.interact = 0s
0x000134:
    if !(== self.conversation 6s) goto 0x000164
0x000148:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x0001E8
0x00016C:
    [obj_toroverworld3].y = (+ 861.y 10s)
    [obj_toroverworld3].image_index = 0s
    [obj_toroverworld3].dsprite = 1122s
    [obj_toroverworld3].sprite_index = 1122s
    [obj_mainchara].visible = 0s
    [obj_toroverworld3].image_speed = 0.2d
    stog.alarm[3s] = 120s
    self.conversation = 7s
0x0001E8:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x000260
0x000200:
    if !(== self.conversation 7.6d) goto 0x000230
0x00021C:
    push (== 861.path_position 1s)
    goto 0x000234
0x000230:
    push 0s
0x000234:
    if !pop goto 0x000260
0x000238:
    stog.alarm[5s] = 30s
    self.conversation = 7.7d
0x000260:
    if !(== self.conversation 7.5d) goto 0x000298
0x00027C:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x00029C
0x000298:
    push 0s
0x00029C:
    if !pop goto 0x0002EC
0x0002A0:
    pushenv 861s 0x0002D4
0x0002A8:
    call (path_start[]:int32 (var 0s) (var 0s) (var 3s) (var 28s))
0x0002D4:
    popenv 0x0002A8
0x0002D8:
    self.conversation = 7.6d
0x0002EC:
    if !(== self.conversation 8s) goto 0x00031C
0x000300:
    push (== (instance_exists[]:int32 (var 779s)) 0s)
    goto 0x000320
0x00031C:
    push 0s
0x000320:
    if !pop goto 0x00036C
0x000324:
    global.seriousbattle = 0s
    global.interact = 0s
    pushenv 861s 0x000350
0x000344:
    call (instance_destroy[]:int32 )
0x000350:
    popenv 0x000344
0x000354:
    global.plot = 25s
    call (instance_destroy[]:int32 )
0x00036C:
    if !(bool (instance_exists[]:int32 (var 861s))) goto 0x000658
0x000384:
    if !(== self.conversation 1s) goto 0x000658
0x000398:
    global.interact = 1s
    self.myinteract = 3s
    global.typer = 4s
    global.facechoice = 1s
    global.faceemotion = 7s
    global.msc = 0s
    stog.msg[0s] = "* You want to leave&  so badly?/"
    stog.msg[1s] = "\\E6* Hmph./"
    stog.msg[2s] = "* You are just like&  the others./"
    stog.msg[3s] = "\\E7* There is only one&  solution to this./"
    stog.msg[4s] = "* Prove yourself.../"
    stog.msg[5s] = "* Prove to me you&  are strong enough&  to survive./%%"
    call (ini_open[]:int32 (var "undertale.ini"))
    self.TK = (ini_read_real[]:int32 (var 0s) (var "TK") (var "Toriel"))
    call (ini_close[]:int32 )
    if !(> self.TK 0s) goto 0x000568
0x0004D8:
    stog.msg[5s] = "* Prove to me you&  are strong enough&  to survive!/"
    stog.msg[6s] = "\\E6* ... wait./"
    stog.msg[7s] = "* ... why are you looking&  at me like that?/"
    stog.msg[8s] = "* Like you have seen&  a ghost./"
    stog.msg[9s] = "\\E7* Do you know something&  that I do not?/"
    stog.msg[10s] = "* No...&* That is impossible./%%"
0x000568:
    push -5s
    if !(> 202s:flag 11s) goto 0x0005A0
0x000584:
    push -5s
    push (> 203s:flag 11s)
    goto 0x0005A4
0x0005A0:
    push 0s
0x0005A4:
    if !pop goto 0x0005D8
0x0005A8:
    stog.msg[5s] = "* Prove to me that you&  are.../"
    stog.msg[6s] = "\\E1* Hey^1, let me finish%%"
0x0005D8:
    push -5s
    if !(== 45s:flag 3s) goto 0x000624
0x0005F4:
    stog.msg[0s] = "* Already?/"
    stog.msg[1s] = "* What will it take&  for you to learn&  your lesson?/%%"
0x000624:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 2s
0x000658:
    exit
