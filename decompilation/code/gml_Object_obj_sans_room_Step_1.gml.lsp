0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (script_execute[]:int32 (var 2s) (var 106s))
    if !(== self.s_click 1s) goto 0x00007C
0x000064:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x0000AC
0x000084:
    if !(== 782.stringno 8s) goto 0x0000AC
0x000098:
    call (caster_free[]:int32 (var -3s))
0x0000AC:
    if !(== self.s_click 1s) goto 0x0000DC
0x0000C0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000E0
0x0000DC:
    push 0s
0x0000E0:
    if !pop goto 0x0001A0
0x0000E4:
    self.s_click = 2s
    call (snd_play[]:int32 (var 106s))
    self.visible = 0s
    self.blk = (scr_marker[]:int32 (var 996s) (var 0s) (var 0s))
    push -20s
    stog.depth* = (int32 self.blk)
    push 3000s
    stog.image_xscale* = (int32 self.blk)
    push 1000s
    stog.image_yscale* = (int32 self.blk)
    global.interact = 1s
    stog.alarm[4s] = 10s
0x0001A0:
    if !(== self.s_click 2s) goto 0x0001C0
0x0001B4:
    global.interact = 1s
0x0001C0:
    if !(== self.s_click 3s) goto 0x000244
0x0001D4:
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.blk) 0x000204
0x0001F8:
    call (instance_destroy[]:int32 )
0x000204:
    popenv 0x0001F8
0x000208:
    self.s_click = 4s
    pushenv 1570s 0x000228
0x00021C:
    self.uncan = 0s
0x000228:
    popenv 0x00021C
0x00022C:
    global.interact = 0s
    call (instance_destroy[]:int32 )
0x000244:
    exit
