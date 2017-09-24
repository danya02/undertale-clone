0x000000:
    if !(== self.con 1s) goto 0x000080
0x000014:
    call (caster_pause[]:int32 global.currentsong)
    push 1835s
    stog.sprite_index* = (int32 self.bunny)
    push 1840s
    stog.sprite_index* = (int32 self.dragon)
    self.con = 0.1d
    stog.alarm[4s] = 40s
0x000080:
    if !(== self.con 1.1d) goto 0x000108
0x00009C:
    global.msc = 0s
    stog.msg[0s] = "* ... you're here./"
    stog.msg[1s] = "* So that means Undyne..^1.&* She's.../"
    stog.msg[2s] = "* Like^1, Undyne^1!&* We'll avenge you!/%%"
    call (scr_regulartext[]:int32 )
    self.con = 2s
0x000108:
    if !(== self.con 2s) goto 0x000138
0x00011C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00013C
0x000138:
    push 0s
0x00013C:
    if !pop goto 0x00019C
0x000140:
    global.battlegroup = 49s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 3s
    stog.alarm[4s] = 33s
0x00019C:
    if !(== self.con 4s) goto 0x000248
0x0001B0:
    global.mercy = 0s
    global.interact = 0s
    call (caster_resume[]:int32 global.currentsong)
    push -5s
    if !(== 12s:flag 1s) goto 0x00020C
0x0001F8:
    stog.flag[402s] = 1s
0x00020C:
    self.con = 17s
    global.plot = 164s
    pushenv 1363s 0x000238
0x00022C:
    call (instance_destroy[]:int32 )
0x000238:
    popenv 0x00022C
0x00023C:
    call (instance_destroy[]:int32 )
0x000248:
    exit
