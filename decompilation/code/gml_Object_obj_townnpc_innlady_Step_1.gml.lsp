0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 107s))
    if !(== self.conversation 2s) goto 0x000078
0x00005C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x000118
0x000080:
    global.interact = 1s
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    stog.alarm[5s] = 20s
    self.m = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.05d
    stog.fadespeed* = (int32 self.m)
    self.conversation = 3s
0x000118:
    if !(== self.conversation 6s) goto 0x0002C8
0x00012C:
    if !(< global.hp global.maxhp) goto 0x000154
0x000144:
    global.hp = global.maxhp
0x000154:
    if !(== global.hp 36s) goto 0x000174
0x000168:
    global.hp = 38s
0x000174:
    if !(== global.hp 32s) goto 0x000194
0x000188:
    global.hp = 36s
0x000194:
    if !(== global.hp 28s) goto 0x0001B4
0x0001A8:
    global.hp = 34s
0x0001B4:
    if !(== global.hp 24s) goto 0x0001D4
0x0001C8:
    global.hp = 32s
0x0001D4:
    if !(== global.hp 20s) goto 0x0001F4
0x0001E8:
    global.hp = 30s
0x0001F4:
    global.msc = 0s
    stog.msg[0s] = "* Hiya^1!&* You look like you&  had a great sleep./"
    stog.msg[1s] = "* Which is incredible^1, because&  you were only up there for&  about two minutes.../"
    push -5s
    if !(== 72s:flag 1s) goto 0x000264
0x00024C:
    stog.msg[2s] = "* Here's your money back^1.&* You can pay me if you're&  going to stay overnight./%%"
0x000264:
    push -5s
    if !(== 72s:flag 2s) goto 0x000298
0x000280:
    stog.msg[2s] = "* Feel free to come back&  if you get tired./%%"
0x000298:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.conversation = 7s
0x0002C8:
    if !(== self.conversation 7s) goto 0x0002F8
0x0002DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002FC
0x0002F8:
    push 0s
0x0002FC:
    if !pop goto 0x000338
0x000300:
    self.conversation = 0s
    global.interact = 0s
    self.myinteract = 0s
    stog.flag[73s] = 0s
0x000338:
    exit
