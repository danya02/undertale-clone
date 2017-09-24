0x000000:
    if !(== self.con 1s) goto 0x000058
0x000014:
    global.msc = 0s
    stog.msg[0s] = "* Hey^1! You^1!&* Stop!/%%"
    self.con = 1.1d
    call (scr_regulartext[]:int32 )
0x000058:
    if !(== self.con 1.1d) goto 0x000090
0x000074:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000094
0x000090:
    push 0s
0x000094:
    if !pop goto 0x0001C0
0x000098:
    global.facing = 1s
    self.dragon = (scr_marker[]:int32 (var 1838s) (var 310s) (var 545s))
    self.rabbit = (scr_marker[]:int32 (var 1836s) (var 290s) (var 530s))
    pushenv (int32 self.dragon) 0x000110
0x000104:
    call (scr_depth[]:int32 )
0x000110:
    popenv 0x000104
0x000114:
    pushenv (int32 self.rabbit) 0x000130
0x000124:
    call (scr_depth[]:int32 )
0x000130:
    popenv 0x000124
0x000134:
    pushenv (int32 self.dragon) 0x000158
0x000144:
    self.image_speed = 0.25d
0x000158:
    popenv 0x000144
0x00015C:
    pushenv (int32 self.rabbit) 0x000180
0x00016C:
    self.image_speed = 0.25d
0x000180:
    popenv 0x00016C
0x000184:
    push -3s
    stog.hspeed* = (int32 self.dragon)
    push -3s
    stog.hspeed* = (int32 self.rabbit)
    self.con = 2s
0x0001C0:
    if !(== self.con 2s) goto 0x000264
0x0001D4:
    if !(< (int32 self.dragon):x (+ 1570.x 70s)) goto 0x00022C
0x000200:
    push (< (int32 self.rabbit):x (+ 1570.x 70s))
    goto 0x000230
0x00022C:
    push 0s
0x000230:
    if !pop goto 0x000264
0x000234:
    [obj_npc_marker].hspeed = 0s
    [obj_npc_marker].image_speed = 0s
    [obj_npc_marker].image_index = 0s
    self.con = 3s
0x000264:
    if !(== self.con 3s) goto 0x0002F0
0x000278:
    stog.msg[0s] = "* We've^1, like^1, received an&  anonymous tip about a human&  wearing a striped shirt./"
    stog.msg[1s] = "* They told us they were&  wandering around Hotland&  right now.../"
    stog.msg[2s] = "* I know^1, sounds scary^1, huh?/"
    stog.msg[3s] = "* Well^1, just stay chill^1.&* We'll bring you someplace&  safe^1, OK?/%%"
    call (scr_regulartext[]:int32 )
    self.con = 4s
0x0002F0:
    if !(== self.con 4s) goto 0x000320
0x000304:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000324
0x000320:
    push 0s
0x000324:
    if !pop goto 0x0003C8
0x000328:
    pushenv (int32 self.dragon) 0x000344
0x000338:
    self.sprite_index = 1839s
0x000344:
    popenv 0x000338
0x000348:
    pushenv (int32 self.rabbit) 0x000364
0x000358:
    self.sprite_index = 1837s
0x000364:
    popenv 0x000358
0x000368:
    [obj_npc_marker].hspeed = 3s
    [obj_mainchara].hspeed = 3s
    [obj_npc_marker].image_speed = 0.25d
    [obj_mainchara].image_speed = 0.25d
    self.con = 5s
    stog.alarm[4s] = 30s
0x0003C8:
    if !(== self.con 6s) goto 0x000420
0x0003DC:
    [obj_npc_marker].hspeed = 0s
    [obj_npc_marker].image_speed = 0s
    [obj_npc_marker].image_index = 0s
    self.con = 7s
    stog.alarm[4s] = 3s
0x000420:
    if !(== self.con 8s) goto 0x000478
0x000434:
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].image_index = 0s
    self.con = 9s
    stog.alarm[4s] = 20s
0x000478:
    if !(== self.con 10s) goto 0x00050C
0x00048C:
    pushenv (int32 self.rabbit) 0x0004A8
0x00049C:
    self.sprite_index = 1835s
0x0004A8:
    popenv 0x00049C
0x0004AC:
    stog.msg[0s] = "* ... Huh^1?&* What is it, bro?/"
    stog.msg[1s] = "* The shirt they're wearing?/"
    stog.msg[2s] = "* ... like^1, what about it?/%%"
    call (scr_regulartext[]:int32 )
    self.con = 11s
0x00050C:
    if !(== self.con 11s) goto 0x00053C
0x000520:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x000540
0x00053C:
    push 0s
0x000540:
    if !pop goto 0x000544
0x000544:
    if !(== self.con 11s) goto 0x000574
0x000558:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000578
0x000574:
    push 0s
0x000578:
    if !pop goto 0x0005DC
0x00057C:
    pushenv (int32 self.rabbit) 0x000598
0x00058C:
    self.sprite_index = 1836s
0x000598:
    popenv 0x00058C
0x00059C:
    pushenv (int32 self.dragon) 0x0005B8
0x0005AC:
    self.sprite_index = 1838s
0x0005B8:
    popenv 0x0005AC
0x0005BC:
    self.con = 12s
    stog.alarm[4s] = 90s
0x0005DC:
    if !(== self.con 13s) goto 0x000688
0x0005F0:
    pushenv (int32 self.rabbit) 0x00060C
0x000600:
    self.sprite_index = 1835s
0x00060C:
    popenv 0x000600
0x000610:
    stog.msg[0s] = "* Bro.../"
    stog.msg[1s] = "* Are you thinkin..^1.&* What I'm thinkin?/"
    stog.msg[2s] = "* Bummer^1.&* This is^1, like..^1.&* Mega embarrassing./"
    stog.msg[3s] = "* We^1, like^1, actually&  totally have to kill&  you and stuff./%%"
    self.con = 14s
    call (scr_regulartext[]:int32 )
0x000688:
    if !(== self.con 14s) goto 0x0006B8
0x00069C:
    push (== (instance_exists[]:int32 (var 782s)) 1s)
    goto 0x0006BC
0x0006B8:
    push 0s
0x0006BC:
    if !pop goto 0x000728
0x0006C0:
    if !(== 782.stringno 2s) goto 0x0006F4
0x0006D4:
    pushenv (int32 self.rabbit) 0x0006F0
0x0006E4:
    self.sprite_index = 1837s
0x0006F0:
    popenv 0x0006E4
0x0006F4:
    if !(== 782.stringno 3s) goto 0x000728
0x000708:
    pushenv (int32 self.rabbit) 0x000724
0x000718:
    self.sprite_index = 1836s
0x000724:
    popenv 0x000718
0x000728:
    if !(== self.con 14s) goto 0x000758
0x00073C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00075C
0x000758:
    push 0s
0x00075C:
    if !pop goto 0x0007BC
0x000760:
    global.battlegroup = 49s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 15s
    stog.alarm[4s] = 33s
0x0007BC:
    if !(== self.con 16s) goto 0x00085C
0x0007D0:
    global.mercy = 0s
    global.interact = 0s
    call (caster_resume[]:int32 global.currentsong)
    push -5s
    if !(== 12s:flag 1s) goto 0x00082C
0x000818:
    stog.flag[402s] = 1s
0x00082C:
    self.con = 17s
    global.plot = 146s
    pushenv 1363s 0x000858
0x00084C:
    call (instance_destroy[]:int32 )
0x000858:
    popenv 0x00084C
0x00085C:
    exit
