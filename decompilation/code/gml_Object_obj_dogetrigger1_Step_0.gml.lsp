0x000000:
    push -5s
    if !(== 52s:flag 1s) goto 0x000028
0x00001C:
    self.visible = 0s
0x000028:
    if !(== self.conversation 1s) goto 0x0000C0
0x00003C:
    call (caster_pause[]:int32 global.currentsong)
    global.interact = 1s
    self.image_yscale = 1s
    self.visible = 1s
    self.sprite_index = 1295s
    self.image_speed = 0.1d
    self.y = 140s
    self.vspeed = -0.5d
    self.conversation = 2s
0x0000C0:
    if !(== self.conversation 2s) goto 0x0000E8
0x0000D4:
    push (<= self.y 120s)
    goto 0x0000EC
0x0000E8:
    push 0s
0x0000EC:
    if !pop goto 0x000128
0x0000F0:
    self.y = 120s
    stog.alarm[0s] = 20s
    self.conversation = 3s
    self.vspeed = 0s
0x000128:
    if !(== self.conversation 4s) goto 0x000228
0x00013C:
    stog.msg[0s] = "* Did something move^1?&* Was it my imagination?/"
    stog.msg[1s] = "* I can only see moving&  things./"
    stog.msg[2s] = "* If something WAS moving..^1.&* For example^1, a human.../"
    stog.msg[3s] = "* I'll make sure it NEVER&  moves again!/%%"
    if !(>= (scr_murderlv[]:int32 ) 2s) goto 0x000210
0x0001B0:
    stog.msg[0s] = "* Did something move^1?&* Was it my imagination?/"
    stog.msg[1s] = "* I can only see moving&  things./"
    stog.msg[2s] = "* H..^1. hey!&* I can't stop shivering&  all of a sudden./"
    stog.msg[3s] = "* Who..^1. who's there!?/%%"
0x000210:
    call (scr_regulartext[]:int32 )
    self.conversation = 5s
0x000228:
    if !(== self.conversation 5s) goto 0x000258
0x00023C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00025C
0x000258:
    push 0s
0x00025C:
    if !pop goto 0x0002C4
0x000260:
    global.battlegroup = 23s
    stog.flag[200s] = 0s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.conversation = 5.5d
0x0002C4:
    if !(== global.plot 41s) goto 0x0002F4
0x0002D8:
    push (== self.conversation 5.5d)
    goto 0x0002F8
0x0002F4:
    push 0s
0x0002F8:
    if !pop goto 0x000330
0x0002FC:
    global.interact = 1s
    stog.alarm[0s] = 11s
    self.conversation = 5.6d
0x000330:
    if !(== self.conversation 5.6d) goto 0x000358
0x00034C:
    global.interact = 1s
0x000358:
    if !(== global.plot 41s) goto 0x000380
0x00036C:
    push (== self.conversation 6s)
    goto 0x000384
0x000380:
    push 0s
0x000384:
    if !pop goto 0x0004FC
0x000388:
    call (caster_resume[]:int32 global.currentsong)
    global.mercy = 0s
    global.interact = 1s
    push -5s
    if !(== 52s:flag 1s) goto 0x0003F8
0x0003D0:
    global.plot = 42s
    global.interact = 0s
    call (instance_destroy[]:int32 )
    exit
0x0003F8:
    push -5s
    if (== 52s:flag 0s) goto 0x000430
0x000414:
    push -5s
    push (== 52s:flag 2s)
    goto 0x000434
0x000430:
    push 1s
0x000434:
    if !pop goto 0x0004FC
0x000438:
    stog.msg[0s] = "* S-S-S-Something pet me...&* Something that isn't&  m-m-moving.../"
    stog.msg[1s] = "* I'm gonna need some dog&  treats for this!!!/%%"
    push -5s
    if !(== 52s:flag 2s) goto 0x0004E4
0x000484:
    stog.msg[0s] = "* A stick appeared out of&  nowhere^1, then disappeared./"
    stog.msg[1s] = "* Was it a ghost stick?/"
    stog.msg[2s] = "* Did I just return it to&  the afterlife?/"
    stog.msg[3s] = "* I need some dog treats&  to think about this./%%"
0x0004E4:
    self.conversation = 7s
    call (scr_regulartext[]:int32 )
0x0004FC:
    if !(== self.conversation 7s) goto 0x00052C
0x000510:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000530
0x00052C:
    push 0s
0x000530:
    if !pop goto 0x000560
0x000534:
    self.vspeed = 1s
    stog.alarm[0s] = 20s
    self.conversation = 8s
0x000560:
    if !(== self.conversation 9s) goto 0x0005A4
0x000574:
    self.vspeed = 0s
    global.plot = 42s
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x0005A4:
    exit
