0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    if !(== self.con 1s) goto 0x000070
0x000054:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x0000BC
0x000078:
    call (snd_play[]:int32 (var 148s))
    self.x = -100s
    self.y = -100s
    self.con = 2s
    self.visible = 0s
0x0000BC:
    exit
