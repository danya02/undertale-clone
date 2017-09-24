0x000000:
    self.blcon = (instance_create[]:int32 (var 187s) self.y (+ self.x 120s))
    self.gg = (floor[]:int32 (random[]:int32 (var 3s)))
    self.mycommand = (round[]:int32 (random[]:int32 (var 100s)))
    if !(== self.turns 1s) goto 0x0000B4
0x000084:
    stog.msg[0s] = "\\E1You know.../"
    stog.msg[1s] = "\\M1I \\E0don't care about&destroying this&world anymore./%%"
0x0000B4:
    if !(== self.turns 2s) goto 0x0000F8
0x0000C8:
    stog.msg[0s] = "\\E1After I defeat you&and gain total&control over the&timeline.../"
    stog.msg[1s] = "\\E2I just want to reset&everything./%%"
0x0000F8:
    if !(== self.turns 3s) goto 0x00013C
0x00010C:
    stog.msg[0s] = "\\E3All your progress..^1.&Everyone's memories./"
    stog.msg[1s] = "\\E2I'll bring them all&back to zero!/%%"
0x00013C:
    if !(== self.turns 4s) goto 0x000168
0x000150:
    stog.msg[0s] = "\\E2Then we can do&everything ALL over&again./%%"
0x000168:
    if !(== self.turns 5s) goto 0x0001AC
0x00017C:
    stog.msg[0s] = "\\E3And you know what&the best part of&all this is?/"
    stog.msg[1s] = "\\E2You'll DO it./%%"
0x0001AC:
    if !(== self.turns 6s) goto 0x0001D8
0x0001C0:
    stog.msg[0s] = "\\E1And then you'll&lose to me again./%%"
0x0001D8:
    if !(== self.turns 7s) goto 0x000204
0x0001EC:
    stog.msg[0s] = "\\E3And again./%%"
0x000204:
    if !(== self.turns 8s) goto 0x000230
0x000218:
    stog.msg[0s] = "\\E3And again!!!/%%"
0x000230:
    if !(== self.turns 9s) goto 0x00025C
0x000244:
    stog.msg[0s] = "\\E1Because you want a&\"happy ending.\"/%%"
0x00025C:
    if !(== self.turns 10s) goto 0x000288
0x000270:
    stog.msg[0s] = "Because you \"love&your friends.\"/%%"
0x000288:
    if !(== self.turns 11s) goto 0x0002B4
0x00029C:
    stog.msg[0s] = "Because you \"never&give up.\"/%%"
0x0002B4:
    if !(== self.turns 12s) goto 0x000310
0x0002C8:
    stog.msg[0s] = "\\M1I\\E1sn't that&delicious?/"
    stog.msg[1s] = "\\M0Your \"determination.^1\"&The power that let&you get this far.../"
    stog.msg[2s] = "\\E2It's gonna be your&downfall!/%%"
0x000310:
    if !(== self.turns 13s) goto 0x000354
0x000324:
    stog.msg[0s] = "\\E2Now^1, ENOUGH messing&around!/"
    stog.msg[1s] = "It's time to purge&this timeline once&and for all!/%%"
0x000354:
    self.xx = 0s
    push self.turns
    if !(< -5s 504s:flag) goto 0x00038C
0x000380:
    self.xx = 1s
0x00038C:
    global.typer = 86s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    if (== (int32 self.mypart1):specialnormal 1s) goto 0x000430
0x000408:
    if (== self.turns 0s) goto 0x000430
0x00041C:
    push (== self.xx 1s)
    goto 0x000434
0x000430:
    push 1s
0x000434:
    if !pop goto 0x000478
0x000438:
    pushenv (int32 self.blconwd) 0x000454
0x000448:
    call (instance_destroy[]:int32 )
0x000454:
    popenv 0x000448
0x000458:
    pushenv (int32 self.blcon) 0x000474
0x000468:
    call (instance_destroy[]:int32 )
0x000474:
    popenv 0x000468
0x000478:
    global.border = 17s
    if !(== (int32 self.mypart1):specialnormal 1s) goto 0x0004B0
0x0004A4:
    global.border = 6s
0x0004B0:
    if (== self.turns 2s) goto 0x0004EC
0x0004C4:
    if (== self.turns 6s) goto 0x0004EC
0x0004D8:
    push (== self.turns 10s)
    goto 0x0004F0
0x0004EC:
    push 1s
0x0004F0:
    if !pop goto 0x000500
0x0004F4:
    global.border = 4s
0x000500:
    push -5s
    push 0s:idealborder
    [obj_heart].x = (- (round[]:int32 (/ (+ -5s 1s:idealborder) (double 2s))) 8s)
    push -5s
    push 2s:idealborder
    [obj_heart].y = (- (round[]:int32 (/ (+ -5s 3s:idealborder) (double 2s))) 8s)
    self.say = 1s
0x00059C:
    exit
