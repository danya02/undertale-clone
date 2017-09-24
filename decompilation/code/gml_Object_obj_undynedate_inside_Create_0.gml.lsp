0x000000:
    self.table = (scr_marker[]:int32 (var 1490s) (var 115s) (var 177s))
    pushenv (int32 self.table) 0x000044
0x000038:
    call (scr_depth[]:int32 )
0x000044:
    popenv 0x000038
0x000048:
    self.piano = (scr_marker[]:int32 (var 1489s) (var 100s) (var 60s))
    pushenv (int32 self.piano) 0x00008C
0x000080:
    call (scr_depth[]:int32 )
0x00008C:
    popenv 0x000080
0x000090:
    self.sword = (scr_marker[]:int32 (var 1484s) (- 3.y 34s) 3.x)
    pushenv (int32 self.sword) 0x0000DC
0x0000D0:
    call (scr_depth[]:int32 )
0x0000DC:
    popenv 0x0000D0
0x0000E0:
    self.teacup = (scr_marker[]:int32 (var 1482s) (var 57s) (var 104s))
    pushenv (int32 self.teacup) 0x000124
0x000118:
    call (scr_depth[]:int32 )
0x000124:
    popenv 0x000118
0x000128:
    self.con = 1s
    global.interact = 1s
    stog.alarm[4s] = 40s
    call (caster_free[]:int32 (var -3s))
    global.facing = 2s
    self.papyrus = (instance_create[]:int32 (var 1032s) (var 140s) (var 120s))
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push 1s
    stog.fun* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    self.undyne = (instance_create[]:int32 (var 1061s) (var 80s) (var 140s))
    push (int32 self.undyne):dtsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 1s
    if !(== self.con 104s) goto 0x00032C
0x000264:
    global.currentsong = (caster_load[]:int32 (var "music/undynetruetheme.ogg"))
    call (caster_loop[]:int32 (var 1s) (var 0.9d) global.currentsong)
    global.phasing = 1s
    self.con = 104s
    push 208s
    stog.x* = (int32 self.undyne)
    push 10s
    stog.y* = (int32 self.undyne)
    stog.view_object[0s] = -4s
    [obj_mainchara].cutscene = 1s
    [obj_mainchara].x = 200s
    [obj_mainchara].y = 140s
0x00032C:
    exit
