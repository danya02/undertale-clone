0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    if !(== self.w 1s) goto 0x000074
0x000054:
    stog.alarm[4s] = 10s
    self.w = 2s
0x000074:
    if !(== self.w 3s) goto 0x0000A8
0x000088:
    self.w = 4s
    stog.alarm[4s] = 30s
0x0000A8:
    if !(== self.w 5s) goto 0x0000E8
0x0000BC:
    self.hspeed = -4s
    self.w = 6s
    stog.alarm[4s] = 20s
0x0000E8:
    if !(== self.w 7s) goto 0x000114
0x0000FC:
    self.w = 8s
    self.hspeed = 0s
0x000114:
    exit
