0x000000:
    if !(== self.con 1.1d) goto 0x000154
0x00001C:
    global.msc = 0s
    global.typer = 91s
    call (SCR_TEXTTYPE[]:int32 global.typer)
    stog.msg[0s] = "  Frisk!/"
    stog.msg[1s] = "  This is all just&  a bad dream...!/"
    stog.msg[2s] = "  Please^1, wake up...!/%%"
    self.wrwr = (instance_create[]:int32 (var 782s) (var 140s) (var 40s))
    push -12000s
    stog.depth* = (int32 self.wrwr)
    self.con = 1.9d
    [obj_mainchara].x = 140s
    [obj_mainchara].y = 125s
    global.facing = 3s
    [obj_mainchara].visible = 0s
    self.mc = (scr_marker[]:int32 (var 1047s) 1570.y 1570.x)
    push 0s
    stog.visible* = (int32 self.mc)
0x000154:
    if !(== self.con 1.9d) goto 0x000188
0x000170:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x00018C
0x000188:
    push 0s
0x00018C:
    if !pop goto 0x0001CC
0x000190:
    [obj_mainchara].x = 140s
    [obj_mainchara].y = 125s
    global.facing = 0s
    [obj_mainchara].visible = 0s
    global.interact = 1s
0x0001CC:
    if !(== self.con 1.9d) goto 0x000204
0x0001E8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000208
0x000204:
    push 0s
0x000208:
    if !pop goto 0x000234
0x00020C:
    self.con = 1.8d
    stog.alarm[4s] = 70s
0x000234:
    if !(== self.con 2.8d) goto 0x00025C
0x000250:
    self.con = 2s
0x00025C:
    if !(== self.con 2s) goto 0x00028C
0x000270:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000290
0x00028C:
    push 0s
0x000290:
    if !pop goto 0x000304
0x000294:
    push 1s
    stog.visible* = (int32 self.mc)
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    self.d_blk = 2s
    self.con = 4s
    stog.alarm[4s] = 130s
0x000304:
    if !(== self.con 5s) goto 0x000364
0x000318:
    [obj_mainchara].visible = 1s
    pushenv (int32 self.mc) 0x000340
0x000334:
    call (instance_destroy[]:int32 )
0x000340:
    popenv 0x000334
0x000344:
    self.con = 6s
    stog.alarm[4s] = 60s
0x000364:
    if !(== self.con 7s) goto 0x0003A4
0x000378:
    global.facing = 2s
    self.con = 8s
    stog.alarm[4s] = 50s
0x0003A4:
    if !(== self.con 9s) goto 0x000784
0x0003B8:
    global.typer = 4s
    global.msc = 0s
    global.facechoice = 1s
    global.faceemotion = 0s
    stog.msg[0s] = "* Oh^1!&* You are awake^1!&* Thank goodness!/"
    call (scr_alface[]:int32 (var 9s) (var 1s))
    stog.msg[2s] = "* W-we were so&  worried...!/"
    stog.msg[3s] = "* It felt like you&  were out forever!/"
    call (scr_undface[]:int32 (var 9s) (var 4s))
    stog.msg[5s] = "* Yeah^1! Any longer and&  I would have freaked&  out!/"
    stog.msg[6s] = "\\E2* Tell us next time&  you decide to take&  a nap^1, okay!?/"
    call (scr_sansface[]:int32 (var 1s) (var 7s))
    stog.msg[8s] = "* yeah^1.&* you made papyrus cry&  like a baby./"
    call (scr_papface[]:int32 (var 1s) (var 9s))
    stog.msg[10s] = "WHAT!^1!&I DIDN'T CRY!!^1!&I DON'T CRY!!/"
    stog.msg[11s] = "\\E3I JUST..^1.&CAUGHT SOMETHING&IN MY EYE./"
    call (scr_sansface[]:int32 (var 1s) (var 12s))
    stog.msg[13s] = "* what did you catch?/"
    call (scr_papface[]:int32 (var 8s) (var 14s))
    stog.msg[15s] = "TEARS!!!/"
    call (scr_asgface[]:int32 (var 0s) (var 16s))
    stog.msg[17s] = "* Now^1, now./"
    stog.msg[18s] = "* The important part&  is that Frisk is&  all right./"
    stog.msg[19s] = "* Here^1, Frisk^1.&* Why not drink some&  tea?/"
    stog.msg[20s] = "* It'll make you feel&  better./"
    call (scr_torface[]:int32 (var 1s) (var 21s))
    stog.msg[22s] = "* Errr..^1.&* How about we give&  them space^1, first?/"
    stog.msg[23s] = "\\E2* They must be very&  exhausted./"
    stog.msg[24s] = "\\E8* Though^1, from what^1,&  I am not certain./"
    stog.msg[25s] = "\\E1* Frisk..^1.&* We do not remember&  exactly what happened./"
    stog.msg[26s] = "\\E1* There was a flower..^1.&* And then^1, everything&  went white./"
    stog.msg[27s] = "\\E0* But now the barrier&  is gone./"
    stog.msg[28s] = "* When you are ready^1,&  we will all return&  to the surface./"
    stog.msg[29s] = "* It seems the door to&  the east will lead&  us there now./"
    stog.msg[30s] = "\\E2* But before then.../"
    stog.msg[31s] = "\\E0* Perhaps you might&  want to take a&  walk?/"
    stog.msg[32s] = "* You can say goodbye&  to all of your&  wonderful friends./"
    stog.msg[33s] = "* Do as you wish^1.&* We will all wait&  for you here./%%"
    self.dd = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 1s
    stog.side* = (int32 self.dd)
    self.con = 10s
0x000784:
    if !(== self.con 10s) goto 0x0007B4
0x000798:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007B8
0x0007B4:
    push 0s
0x0007B8:
    if !pop goto 0x000860
0x0007BC:
    pushenv 1311s 0x0007D0
0x0007C4:
    self.direction = 270s
0x0007D0:
    popenv 0x0007C4
0x0007D4:
    pushenv 1312s 0x0007E8
0x0007DC:
    self.direction = 270s
0x0007E8:
    popenv 0x0007DC
0x0007EC:
    pushenv 1316s 0x000800
0x0007F4:
    self.direction = 270s
0x000800:
    popenv 0x0007F4
0x000804:
    pushenv 1315s 0x000818
0x00080C:
    self.direction = 270s
0x000818:
    popenv 0x00080C
0x00081C:
    global.interact = 0s
    stog.flag[510s] = 2s
    self.con = 11s
    global.filechoice = 0s
    call (scr_save[]:int32 )
0x000860:
    if !(== self.d_blk 1s) goto 0x0008BC
0x000874:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x0008BC:
    if !(== self.d_blk 2s) goto 0x000980
0x0008D0:
    self.blk = (- self.blk 0.01d)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 self.blk)
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    if !(<= self.blk 0s) goto 0x00096C
0x000960:
    self.d_blk = 0s
0x00096C:
    call (draw_set_alpha[]:int32 (var 1s))
0x000980:
    exit
