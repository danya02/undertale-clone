0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    if !(== self.type 0s) goto 0x000104
0x000050:
    stog.msg[0s] = "* (It's some kind of switch.^1)&* (There's a red-colored&  slot in the center.)/%%"
    push -5s
    if !(== 481s:flag 3s) goto 0x00009C
0x000084:
    stog.msg[0s] = "* (The red switch has been&  turned on.)/%%"
0x00009C:
    push -5s
    if !(== 481s:flag 2s) goto 0x000104
0x0000B8:
    stog.flag[481s] = 3s
    self.red = 1s
    call (snd_play[]:int32 (var 106s))
    stog.msg[0s] = "* (Click!^1)&* (The red key fits perfectly&  into the slot.)/%%"
0x000104:
    if !(== self.type 1s) goto 0x0001CC
0x000118:
    stog.msg[0s] = "* (It's some kind of switch.^1)&* (There's a blue-colored&  slot in the center.)/%%"
    push -5s
    if !(== 482s:flag 3s) goto 0x000164
0x00014C:
    stog.msg[0s] = "* (The blue switch has been&  turned on.)/%%"
0x000164:
    push -5s
    if !(== 482s:flag 2s) goto 0x0001CC
0x000180:
    stog.flag[482s] = 3s
    self.blu = 1s
    call (snd_play[]:int32 (var 106s))
    stog.msg[0s] = "* (Click!^1)&* (The blue key fits perfectly&  into the slot.)/%%"
0x0001CC:
    if !(== self.type 2s) goto 0x000294
0x0001E0:
    stog.msg[0s] = "* (It's some kind of switch.^1)&* (There's a green-colored&  slot in the center.)/%%"
    push -5s
    if !(== 483s:flag 3s) goto 0x00022C
0x000214:
    stog.msg[0s] = "* (The green switch has been&  turned on.)/%%"
0x00022C:
    push -5s
    if !(== 483s:flag 2s) goto 0x000294
0x000248:
    stog.flag[483s] = 3s
    self.gre = 1s
    call (snd_play[]:int32 (var 106s))
    stog.msg[0s] = "* (Click!^1)&* (The green key fits perfectly&  into the slot.)/%%"
0x000294:
    if !(== self.type 3s) goto 0x00035C
0x0002A8:
    stog.msg[0s] = "* (It's some kind of switch.^1)&* (There's a yellow-colored&  slot in the center.)/%%"
    push -5s
    if !(== 484s:flag 3s) goto 0x0002F4
0x0002DC:
    stog.msg[0s] = "* (The yellow switch has been&  turned on.)/%%"
0x0002F4:
    push -5s
    if !(== 484s:flag 2s) goto 0x00035C
0x000310:
    stog.flag[484s] = 3s
    self.yel = 1s
    call (snd_play[]:int32 (var 106s))
    stog.msg[0s] = "* (Click!^1)&* (The yellow key fits perfectly&  into the slot.)/%%"
0x00035C:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x000384:
    exit
