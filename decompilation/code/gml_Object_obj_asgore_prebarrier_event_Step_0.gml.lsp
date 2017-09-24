0x000000:
    if !(== self.con 1s) goto 0x0000BC
0x000014:
    global.msc = 0s
    global.typer = 60s
    global.facechoice = 7s
    global.faceemotion = 3s
    stog.msg[0s] = "* How tense.../"
    stog.msg[1s] = "\\E2* Just think of it like.../"
    stog.msg[2s] = "\\E0* A visit to the dentist./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 2s
0x0000BC:
    if !(== self.con 2s) goto 0x0000EC
0x0000D0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x000178
0x0000F4:
    global.plot = 207s
    self.con = 50s
    global.interact = 0s
    push 3s
    stog.hspeed* = (int32 self.asg)
    push (int32 self.asg):rsprite
    stog.sprite_index* = (int32 self.asg)
    push 0.2d
    stog.image_speed* = (int32 self.asg)
0x000178:
    if (== self.con 50s) goto 0x0001B4
0x00018C:
    if (== self.con 51s) goto 0x0001B4
0x0001A0:
    push (== self.con 52s)
    goto 0x0001B8
0x0001B4:
    push 1s
0x0001B8:
    if !pop goto 0x000234
0x0001BC:
    if !(> (int32 self.asg):x 580s) goto 0x000234
0x0001DC:
    push 580s
    stog.x* = (int32 self.asg)
    push (int32 self.asg):utsprite
    stog.sprite_index* = (int32 self.asg)
    push 0s
    stog.image_index* = (int32 self.asg)
0x000234:
    if !(== self.con 50s) goto 0x000270
0x000248:
    if !(> 1570.x 480s) goto 0x000270
0x00025C:
    push (== global.interact 0s)
    goto 0x000274
0x000270:
    push 0s
0x000274:
    if !pop goto 0x00032C
0x000278:
    global.interact = 1s
    global.msc = 0s
    global.typer = 60s
    global.facechoice = 7s
    global.faceemotion = 3s
    stog.msg[0s] = "* Are you ready?/"
    stog.msg[1s] = "\\E3* If you are not^1, I&  understand./"
    stog.msg[2s] = "\\E2* I am not ready either./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 51s
0x00032C:
    if !(== self.con 51s) goto 0x000360
0x000340:
    push (== (int32 self.asg):x 580s)
    goto 0x000364
0x000360:
    push 0s
0x000364:
    if !pop goto 0x000380
0x000368:
    global.plot = 208s
    self.con = 52s
0x000380:
    if !(== self.con 52s) goto 0x0003B0
0x000394:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003B4
0x0003B0:
    push 0s
0x0003B4:
    if !pop goto 0x0004A8
0x0003B8:
    global.interact = 0s
    push (int32 self.asg):usprite
    stog.sprite_index* = (int32 self.asg)
    push 0.25d
    stog.image_speed* = (int32 self.asg)
    push -2s
    stog.vspeed* = (int32 self.asg)
    stog.image_alpha* = (- (int32 self.asg):image_alpha 0.05d)
    if !(< (int32 self.asg):image_alpha 0.1d) goto 0x0004A8
0x00047C:
    push (int32 self.asg)
    pushenv (int32 self.asg) 0x000498
0x00048C:
    call (instance_destroy[]:int32 )
0x000498:
    popenv 0x00048C
0x00049C:
    call (instance_destroy[]:int32 )
0x0004A8:
    exit
